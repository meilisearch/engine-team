<p align="center">
  <img src="https://raw.githubusercontent.com/meilisearch/integration-guides/main/assets/logos/logo.svg" alt="Meilisearch logo" width="200" height="200" />
</p>

<h1 align="center">Meilisearch Core Team</h1>
<h5 align="center">This repository is the central reference for developing and maintaining the core team repositories.</h5>

<h4 align="center">
  <a href="https://github.com/meilisearch/meilisearch">Meilisearch</a> |
  <a href="https://docs.meilisearch.com">Documentation</a> |
  <a href="https://slack.meilisearch.com">Slack</a> |
  <a href="https://www.meilisearch.com">Website</a> |
  <a href="https://blog.meilisearch.com">Blog</a> |
  <a href="https://fr.linkedin.com/company/meilisearch">LinkedIn</a> |
  <a href="https://twitter.com/meilisearch">Twitter</a> |
  <a href="https://docs.meilisearch.com/faq/">FAQ</a>
</h4>

<p align="center">
  <a href="https://slack.meilisearch.com"><img src="https://img.shields.io/badge/slack-Meilisearch-blue.svg?logo=slack" alt="Slack"></a>
</p>

The Core Team owns all the repositories related to the core-engine:
- [**Meilisearch**](https://github.com/meilisearch/meilisearch): the main repository containing the current search engine.
- [**Milli**](https://github.com/meilisearch/milli): the new search engine in development.
- [**Tokenizer**](https://github.com/meilisearch/tokenizer/): the tokenizer used by the search engine (in Meilisearch and in Milli)
- [**Grenad**](https://github.com/meilisearch/grenad): tools to sort, merge, write, and read immutable key-value pairs
- [**Heed**](https://github.com/meilisearch/heed): a fully typed LMDB/MDBX wrapper with minimum overhead, uses bytemuck internally
- [**lmdb-rs**](https://github.com/meilisearch/lmdb-rs/): a fork of [mozilla/lmdb-rs](https://github.com/mozilla/lmdb-rs)
- [**lmdb**](https://github.com/meilisearch/lmdb): a fork of [LMDB/lmdb](https://github.com/LMDB/lmdb)
- [**Segment**](https://github.com/meilisearch/segment): an unofficial segment analytics client for Rust used by Meilisearch
- [**Segment**](https://github.com/meilisearch/segment): an unofficial segment analytics client for Rust used by Meilisearch

Misc:
- [cargo-flaky](https://github.com/meilisearch/cargo-flaky): cargo extension to help you find flaky tests in you test suite. Used in the [Meilisearch CI](https://github.com/meilisearch/meilisearch/actions/workflows/flaky.yml) every week.
- [Nelson](https://github.com/meilisearch/nelson/): small mocking library for Rust. Used in the Meilisearch test suite.
- [Madness](https://github.com/meilisearch/madness): library for mDNS service discovery and advertisement. Not used by Meilisearch currently.

Archived repositories:
- [**Transplant**](https://github.com/meilisearch/transplant): the temporary repository that integrates Milli as search engine. The final goal of Transplant code base is to be integrated into the MeiliSearch repository and will correspond to the v0.21.0 release.

# TOC

- [Roadmaps](./roadmaps)
