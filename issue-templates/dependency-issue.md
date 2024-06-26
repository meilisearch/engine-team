This issue is about updating Meilisearch dependencies:
  - [ ] Cargo toml dependencies of Meilisearch; but also the main engine-team repositories that Meilisearch depends on (charabia, heed...)
  - [ ] If new Rust versions have been released, update the minimal Rust version in use at Meilisearch:
    - [ ] in this [GitHub Action file](https://github.com/meilisearch/meilisearch/blob/main/.github/workflows/test-suite.yml), by changing the `toolchain` field of the `rustfmt` job to the latest available nightly (of the day before or the current day)
    - [ ] in this [`rust-toolchain.toml`](https://github.com/meilisearch/meilisearch/blob/main/rust-toolchain.toml), by changing the `channel` field to the latest stable version.
    - [ ] in the [Dockerfile](https://github.com/meilisearch/meilisearch/blob/main/Dockerfile), by changing the base image to `rust:<target_rust_version>-alpine<alpine_version>`. Check that the image exists on [Dockerhub](https://hub.docker.com/_/rust/tags?page=1&name=alpine). Also, build and run the image to check everything still works!

⚠️ To avoid last minute bugs, this issue should only be done at the beginning of the sprint!

The GitHub action dependencies are managed by [Dependabot](https://github.com/meilisearch/meilisearch/blob/main/.github/dependabot.yml), so no need to update them when solving this issue.
