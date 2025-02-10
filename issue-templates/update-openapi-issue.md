This issue is about updating the [Open API file](https://github.com/meilisearch/open-api/) related to the Meilisearch release.

## How?

- Pull the latest version of the latest rc of Meilisearch `git checkout release-vX.Y.Z; git pull`
- Starts Meilisearch with the `swagger` feature flag: `cargo run --features swagger`
- On a browser, open the following URL: http://localhost:7700/scalar
- Click the « Download openAPI file »
- Open a PR replacing [this file](https://github.com/meilisearch/open-api/blob/main/open-api.json) with the one downloaded

## When?

⚠️ This should be done at the end of the pre-release, once all the implementations have been done.
