This issue is about updating [Meilisearch version in Cargo.toml](https://github.com/meilisearch/meilisearch/blob/82b43e9a7f09de51ea723817cc0878a77fccf049/Cargo.toml#L24).

### When?
⚠️ This should be done before releasing the first RC0, and can be done at the beginning of the sprint.

### How?
Use [our automation](https://github.com/meilisearch/meilisearch/actions/workflows/update-cargo-toml-version.yml) -> click on `Run workflow`, and fill the appropriate version before validating (version number AND the branch you want the PR to be merged)

A PR updating all the versions in the Cargo.toml files will be created.
