# Indexation Benchmarks

This guide is to help people running manual benchmarks and to describe the dataset generation process.

## How to create benchmark datasets

Orignal datasets we provide (in CSV format):
- [`wikipedia-articles.csv` dataset](https://milli-benchmarks.fra1.digitaloceanspaces.com/datasets/wiki-articles.csv.gz) (5M documents - 8.7 GB)
- [`songs.csv` dataset](https://milli-benchmarks.fra1.digitaloceanspaces.com/datasets/songs.csv.gz) (115M documents - 12 GB)

### Split the CSV file

Requirement:
- [xsv](https://github.com/BurntSushi/xsv)

Know the number of documents:

```bash
xsv count <csv_file>
```

Create a random sample of the dataset:

```bash
xsv sample <nb_lines> <csv_file> > <new_csv_file>
```

Execute any `xsv` command make you check the new CSV file is valid.

### Convert to NDJSON

Requirement:
- [csv2ndjson-lite](https://github.com/Kerollmops/csv2ndjson-lite)

During this step, you need to provide the field type if the type is not a string (e.g. number or array)

Example:

```bash
cat <csv_file> | csv2ndjson-lite --numbers duration-float released-timestamp > <ndjson_file>
```

### Convert to JSON

Use the script in the `scripts` folder:

```bash
../scripts/ndjson-to-json.bash <ndjson_file> <json_file>
```

💡 You can check the number of document in the dataset with the [`jq`](https://stedolan.github.io/jq/download/) command:

```bash
cat <json_file> | jq length
```

### Download dataset samples

- [songs-samples](https://milli-benchmarks.fra1.digitaloceanspaces.com/datasets/songs-samples.tar.gz)
- [wiki-samples](https://milli-benchmarks.fra1.digitaloceanspaces.com/datasets/wiki-samples.tar.gz)

```bash
curl <file_s3_url> --output <file_local_path>
```

## Add documents to MeiliSearch

For datasets bigger than 100Mb (the default payload size of MeiliSearch), we need to push documents in batches.

⚠️ MeiliSearch and the script pushing documents should not run in the same machine

Requirement:
- `ruby`

Install the [Ruby SDK for MeiliSearch](https://github.com/meilisearch/meilisearch-ruby):

```bash
gem install meilisearch
```

Run the Ruby script with the right environment variables for `MS_HOST_URL` and `MS_API_KEY`:

```bash
MS_HOST_URL=<host-url> MS_API_KEY=<api-key> ruby ../scripts/add_batched_documents.rb <json_file> <documents_per_batch>
```

💡 You can also set `INDEX_UID` as environment variable. Default is `bench`.

### Adding `id` to the dataset

Some datasets, like the Wiki articles dataset, does not contain any a unique attribute (like `id`). You have to add the `id` field to the dataset before pushing the documents to MeiliSearch.

Requirement:
- [csv-generate-ids](https://github.com/Kerollmops/csv-generate-ids)

```bash
cat <csv_file> | csv-generate-ids --id-step-by 1 --id-start-at 0 --id-field-name id > <new_csv_file>
```

## Get the indexation total time

Requirement:
- `ruby`

Install the [Ruby SDK for MeiliSearch](https://github.com/meilisearch/meilisearch-ruby):

```bash
gem install meilisearch
```

```bash
MS_HOST_URL=<host-url> MS_API_KEY=<api-key> ruby ../scripts/indexation_total_duration.rb
```

💡 You can also set `INDEX_UID` as environment variable. Default is `bench`.
