This issue is about updating Meilisearch dependencies:
  - [ ] Cargo toml dependencies of Meilisearch; but also the main engine-team repositories that Meilisearch depends on (charabia, heed...)
  - [ ] If new Rust versions have been released, update the Rust version in the Clippy job of this [GitHub Action file](https://github.com/meilisearch/meilisearch/blob/main/.github/workflows/test-suite.yml)

⚠️ To avoid last minute bugs, this issue should only be done at the beginning of the sprint!

The GitHub action dependencies are managed by [Dependabot](https://github.com/meilisearch/meilisearch/blob/main/.github/dependabot.yml), so no need to update them when solving this issue.
