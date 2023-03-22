# Experimental features: description and process

## Quick definition of experimental feature

An experimental feature is a feature present in the final Meilisearch binary, but that is not considered as stable: the API can break between 2 versions of Meilisearch.

Even if he feature is present in the Meilisearch binary, it will be not enabled by default: the users must activate it to use it consciously.

> ⚠️ Experimental features are NOT [prototypes]().

## Motivations

From the moment Meilisearch v1 is released, Meilisearch is considered a stable binary where the API cannot break. It will be impossible to provide a feature and break it without releasing a major version.

Since we don’t plan to release a new major version every two months (we guarantee stability to our users), we need to ensure we are making the right product decisions about our newly integrated features.

To prevent this, we want to provide first these features as "experimental" by letting users testing them and reporting any issues they could have with their usage.

## Which features are concerned?

Not all the new feature introduction will get through the experimental feature process.

Experimental features are:

- New features we want to add to the search engine (like a new route, a new parameter, or a new CLI flag), but we are not sure if we want to provide them this way or even at all. We need the user feedback to make our final decision.
- Improvements we want to provide, but the engine team is not comfortable considering them immediately as stable. For instance, relevancy or performance improvements.
- Features that would introduce a breaking change and so can’t be integrated as stable before the v2 is released.
- Features we want to provide into the search engine, but that will NEVER be stable. These features are useful to provide a quick fix to the users when they have critical issues when using Meilisearch, for instance, an option to disable the auto-batching feature.

## How to use experimental features?

They will be integrated into the stable binary but must be activated with a CLI flag.

For instance `--experimental-disable-soft-delete` or `--experimental-multi-index-search`.

⚠️ To ensure the users understand the feature is experimental, the flag needs to have the `experimental` prefix.

## Rules and expectations

- The API and the behavior of an experimental feature can break between two minor versions of Meilisearch.
- The whole experimental feature process described in this guide can break between 2 minor versions of Meilisearch.
- Providing a feature as “experimental” does not guarantee it will be stable one day: the newly introduced experimental features or improvements can be removed in the future.
- The experimental features are supposed to be unstable regarding the usage but **not buggy**.
The features will be released like any stable feature with a whole test suite and serious code reviews, something we don’t have the time to do when providing a prototype, for example.
However, the experimental feature process can be an opportunity to test an improvement (for example, regarding performance) we are not comfortable putting immediately into production. In this case, more bugs and/or API changes are expected.

## Communication with users

For each experimental feature:
- In the [product repository](https://github.com/meilisearch/product/discussions)
  - A dedicated GitHub discussion is open
  - The discussion should be clear about the following information
      - Our motivations: why this feature is unstable?
      - How to use the feature: how to activate it? Do we need to do a migration with a dump?
      - Our future plan: what do we expect to make it stable? When will the feature potentially be stable?
  - The discussion should not stay in a stale state. Users need to understand they can interact in the discussion and get quick answers. If needed, the discussion will be updated regularly.
- Using the Meilisearch CLI: the `--help` command in the Meilisearch binary will redirect to the related GitHub discussion and warn about the unstable state of the features.
- In the documentation: a small dedicated page should be done about the purpose of the experimental feature and redirect to the related GitHub discussion.

## Some warnings about the usage

- Experimental features are not recommended to be used in production.
- For some provided experimental features, re-indexing will be needed. For this, more than only restarting the search engine, using a dump will be needed to enforce re-indexing.
This means, in some situations, using a dump might be needed to activate an experimental feature but also to deactivate it. The users will be clearly informed in the related discussion how to activate the feature

> ⚠️ When deactivating this kind of experimental feature, since our process is not mature yet, users can have some issues with their DB, even when using a dump.<br>
> We recommend users always save their data (with snapshots and/or dumps) before starting to activate experimental features. Of course, the safest method is to use a script to feed Meilisearch.

## Technical explanations

### Why does Meilisearch need to be restarted (by using the `experimental` CLI flag)?

Meilisearch uses LMDB to store the data, not only user documents but also a lot of internal data, like Meilisearch tasks. With LMDB, if we want to add or remove data structures to store this data, we need to close the LMDB environment and re-open it, so to restart Meilisearch.

It means if an experimental feature implementation involves a modification of the data structures, users must restart Meilisearch; we cannot make it enable/disable from the HTTP routes.

Unfortunately, this might concern most of the future features. That’s why we chose, for the moment, only to suggest flag CLI in order to enable/disable experimental features. However, this can be changed in the future or adapted to the situation.

### Why could we need to use a dump?

Since we need to restart Meilisearch, and changes happened on the DB side, an issue could happen when Meilisearch tries to read the “old” data.ms.

Indeed, Meilisearch could try to read the old DB, but does not succeed to do it (crash), or do it badly (inconsistent results). That’s why we ask for dumps between 2 minor versions (there are often a lot of changes in the DB), and that’s why users sometimes will need to use a dump when passing from stable to experimental. The contrary (from experimental to stable) is riskier, even when using a dump, since we are not mature enough yet, but we will be safer and safer in the future.

### Restarting Meilisearch and using dump is not convenient; could we improve this in the future?

Indeed, we know it’s not convenient for the users. We will always try to ask to use a dump only when it’s necessary.

Regarding the restart, we will do our best to try removing it, and then avoid using the dump at the same time. However, it will require a lot of implementation time we don’t have the time currently to spend. But depending on the situation, we might want to put effort into it. We know it will facilitate the exposition of the experimental feature on the Cloud side for example.
