This issue is about updating Meilisearch dependencies:
  - [ ] Cargo toml dependencies of Meilisearch; but also the main engine-team repositories that Meilisearch depends on (charabia, heed...)
  - [ ] If new Rust versions have been released, update the minimal Rust version in use at Meilisearch:
    - [ ] in this [GitHub Action file](https://github.com/meilisearch/meilisearch/blob/main/.github/workflows/test-suite.yml), by changing the `toolchain` field of the `clippy` job.
    - [ ] in the [Dockerfile](https://github.com/meilisearch/meilisearch/blob/main/Dockerfile), by changing the base image to `rust:<target_rust_version>-alpine<alpine_version>`. Check that the image exists on [Dockerhub](https://hub.docker.com/_/rust/tags?page=1&name=alpine)!
    - [x] no need to change the Rust version elsewhere, as the rest of our CI is using either the stable or the nightly version of Rust for various reasons.

⚠️ To avoid last minute bugs, this issue should only be done at the beginning of the sprint!

The GitHub action dependencies are managed by [Dependabot](https://github.com/meilisearch/meilisearch/blob/main/.github/dependabot.yml), so no need to update them when solving this issue.
