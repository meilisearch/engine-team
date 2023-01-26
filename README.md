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

- [**Meilisearch**](https://github.com/meilisearch/meilisearch): the main repository containing the current search engine.
- [**Milli**](https://github.com/meilisearch/milli): the new search engine in development.
- [**Charabia**](https://github.com/meilisearch/charabia/): the tokenizer used by the search engine (in Meilisearch and in Milli).
- [**Grenad**](https://github.com/meilisearch/grenad): tools to sort, merge, write, and read immutable key-value pairs.
- [**Heed**](https://github.com/meilisearch/heed): a fully typed LMDB/MDBX wrapper with minimum overhead, uses bytemuck internally.
- [**lmdb-rs**](https://github.com/meilisearch/lmdb-rs/): a fork of [mozilla/lmdb-rs](https://github.com/mozilla/lmdb-rs).
- [**lmdb**](https://github.com/meilisearch/lmdb): a fork of [LMDB/lmdb](https://github.com/LMDB/lmdb).
- [**Segment**](https://github.com/meilisearch/segment): an unofficial segment analytics client for Rust used by Meilisearch.
- [**Deserr**](https://github.com/meilisearch/deserr/): a crate for deserializing data, with the ability to return custom, type-specific errors upon failure

For testing:

- [**cargo-flaky**](https://github.com/meilisearch/cargo-flaky): cargo extension to help you find flaky tests in you test suite. Used in the [Meilisearch CI](https://github.com/meilisearch/meilisearch/actions/workflows/flaky.yml) every week.
- [**Nelson**](https://github.com/meilisearch/nelson/): small mocking library for Rust. Used in the Meilisearch test suite.
- [**Yaup**](https://github.com/meilisearch/yaup/): a fork of [`serde_url_params`](https://github.com/boxdot/serde-url-params-rs) for `GET /search` tests.

Misc:

- [**Devspector**](https://github.com/meilisearch/devspector): website using Meilisearch to search into the specification repository, on the [`develop` branch](https://github.com/meilisearch/specifications/tree/develop). Visit [this website](https://specs.meilisearch.dev/).
- [**Mainspector**](https://github.com/meilisearch/devspector): same as Devspector but on the [`main` branch](https://github.com/meilisearch/specifications). Visit [this website](https://specs.meilisearch.com/).
- [**Madness**](https://github.com/meilisearch/madness): library for mDNS service discovery and advertisement. Not used by Meilisearch currently.
- [**ansible-vm-benchmarks**](https://github.com/meilisearch/ansible-vm-benchmarks): an Ansible Playbook to index datasets on several typology of Instance on a specific Meilisearch version/commit
- [**segseg**](https://github.com/meilisearch/segseg): a POC of a segment based search engine
- [**meili-aoc**](https://github.com/meilisearch/meili-aoc) (internal): Advent of Code repository

Archived repositories:

- [**Jayson**](https://github.com/meilisearch/jayson): heavily modified version of [miniserde](https://github.com/dtolnay/miniserde), with only the deserialization part.
- [**Transplant**](https://github.com/meilisearch/transplant): the temporary repository that integrates Milli as search engine. The final goal of Transplant code base is to be integrated into the MeiliSearch repository and will correspond to the v0.21.0 release.
- Raft work that has been archived
  - [**Meilipod**](https://github.com/meilisearch/meilipod) (private only)
  - [**Raft**](https://github.com/meilisearch/raft) (private only)
  - [**raft-metrics**](https://github.com/meilisearch/raft-metrics) (private only)

# TOC

- [Roadmaps](./roadmaps)
- [Resources](./resources)
