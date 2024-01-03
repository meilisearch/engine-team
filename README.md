<p align="center">
  <img src="https://raw.githubusercontent.com/meilisearch/integration-guides/main/assets/logos/logo.svg" alt="Meilisearch logo" width="200" height="200" />
</p>

<h1 align="center">Meilisearch Engine Team</h1>
<h5 align="center">This repository is the central reference for developing and maintaining the engine team repositories.</h5>

<h4 align="center">
  <a href="https://github.com/meilisearch/meilisearch">Meilisearch</a> |
  <a href="https://docs.meilisearch.com">Documentation</a> |
  <a href="https://discord.meilisearch.com">Discord</a> |
  <a href="https://www.meilisearch.com">Website</a> |
  <a href="https://blog.meilisearch.com">Blog</a> |
  <a href="https://fr.linkedin.com/company/meilisearch">LinkedIn</a> |
  <a href="https://twitter.com/meilisearch">Twitter</a> |
  <a href="https://docs.meilisearch.com/faq/">FAQ</a>
</h4>

The engine team owns all the repositories related to the engine-engine:

- [**Meilisearch**](https://github.com/meilisearch/meilisearch): the main Engine team repository containing the search engine.
- [**Charabia**](https://github.com/meilisearch/charabia/): the tokenizer used by the search engine (in Meilisearch and in Milli).
- [**Grenad**](https://github.com/meilisearch/grenad): tools to sort, merge, write, and read immutable key-value pairs.
- [**Heed**](https://github.com/meilisearch/heed): a fully typed LMDB/MDBX wrapper with minimum overhead, uses bytemuck internally.
- [**lmdb-rs**](https://github.com/meilisearch/lmdb-rs/): a fork of [mozilla/lmdb-rs](https://github.com/mozilla/lmdb-rs).
- [**lmdb**](https://github.com/meilisearch/lmdb): a fork of [LMDB/lmdb](https://github.com/LMDB/lmdb).
- [**Segment**](https://github.com/meilisearch/segment): an unofficial segment analytics client for Rust used by Meilisearch.
- [**Deserr**](https://github.com/meilisearch/deserr/): a crate for deserializing data, with the ability to return custom, type-specific errors upon failure
- [**Arroy**](https://github.com/meilisearch/arroy): search for vectors in space that are close to a given query vector, with the interface of [Annoy](https://github.com/spotify/annoy/#full-python-api).

For testing:

- [**cargo-flaky**](https://github.com/meilisearch/cargo-flaky): cargo extension to help you find flaky tests in you test suite. Used in the [Meilisearch CI](https://github.com/meilisearch/meilisearch/actions/workflows/flaky.yml) every week.
- [**Yaup**](https://github.com/meilisearch/yaup/): a fork of [`serde_url_params`](https://github.com/boxdot/serde-url-params-rs) for `GET /search` tests.

Misc:

- [**external-benchmarks**](https://github.com/meilisearch/external-benchmarks) (private only): benchmarks applied on concrete usecase to measure the impact of the engine team.
- [**Madness**](https://github.com/meilisearch/madness): library for mDNS service discovery and advertisement. Not used by Meilisearch currently.
- [**segseg**](https://github.com/meilisearch/segseg): a POC of a segment based search engine

Archived repositories:

- [**Milli**](https://github.com/meilisearch/milli): the new search engine in development.
- [**Jayson**](https://github.com/meilisearch/jayson): heavily modified version of [miniserde](https://github.com/dtolnay/miniserde), with only the deserialization part.
- [**Transplant**](https://github.com/meilisearch/transplant): the temporary repository that integrates Milli as search engine. The final goal of Transplant code base is to be integrated into the MeiliSearch repository and will correspond to the v0.21.0 release.
- Raft work that has been archived
  - [**Meilipod**](https://github.com/meilisearch/meilipod) (private only)
  - [**Raft**](https://github.com/meilisearch/raft) (private only)
  - [**raft-metrics**](https://github.com/meilisearch/raft-metrics) (private only)
- [**Nelson**](https://github.com/meilisearch/nelson/): small mocking library for Rust. Used in the past in the Meilisearch test suite.
- [**meili-aoc**](https://github.com/meilisearch/meili-aoc) (internal): Advent of Code repository
- [**Devspector**](https://github.com/meilisearch/devspector): website using Meilisearch to search into the specification repository, on the [`develop` branch](https://github.com/meilisearch/specifications/tree/develop). Visit [this website](https://specs.meilisearch.dev/).
- [**Mainspector**](https://github.com/meilisearch/devspector): same as Devspector but on the [`main` branch](https://github.com/meilisearch/specifications). Visit [this website](https://specs.meilisearch.com/).

# TOC

- [Resources](./resources)
- [Release changelogs](./meilisearch-release-changelog)
- [Issue templates](./issue-templates)
