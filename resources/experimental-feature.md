# Experimental features: description and process

## Quick definition of experimental feature

An experimental feature is a feature present in the final Meilisearch binary that is not considered stable. This means the API might become incompatible between two Meilisearch releases.

Experimental features must be explicitly enabled by a user.

> ⚠️ Experimental features are NOT [prototypes](). All experimental features are thoroughly tested before release and follow the same quality standards as other features.

## Motivation

Since the release of v1, Meilisearch is considered a stable binary and its API cannot break between minor and patch versions. This means it is impossible to make breaking changes to a feature without releasing a major version.

This limitation, which guarantees our users Meilisearch is a stable and reliable product, also applies to new features. If we introduce a new feature in one release, any breaking changes will require a new major release.

To prevent frequently releasing new major versions but still continue to develop new features, we will first provide these features as "experimental". This allows users to test them, report implementation issues, and give us important feedback.

## When is a feature considered experimental?

Not all new features need to go through the experimental feature process.

We will treat features as experimental when:

- New features we are considering adding to the search engine, but need user feedback before making our final decision and/or committing to a specific implementation. Example: a new API route or CLI flag
- Improvements to existing functionality the engine team is not comfortable releasing as stable immediately. Example: changes to search relevancy or performance improvements
- New features that would introduce breaking changes and cannot be integrated as stable before a new major version
- New features that will NEVER be stable. These features are useful to provide quick temporary fixes to critical issues. Example: an option to disable auto-batching

## How to enable experimental features?

Users must explicitly enable experimental features with a CLI flag. Experimental features will always be disabled by default.

Example CLI flags: `--experimental-disable-soft-delete`, `--experimental-multi-index-search`.

⚠️ To ensure users understand a feature is experimental, flags must contain the `experimental` prefix.

## Rules and expectations

- The API and behavior of an experimental feature can break between two minor versions of Meilisearch
- The experimental feature process described here can significantly change between 2 minor versions of Meilisearch
- Providing a feature as “experimental” does not guarantee it will be stable one day: the newly introduced experimental features or improvements may be removed in a future release
- While experimental features are supposed to be unstable regarding usage and compatibility between versions, users should not expect any more bugs or issues than with any other Meilisearch feature. Experimental features should follow the same quality standards of stable features, including thorough testing suites and in-depth code reviews. That said, certain experimental features might be inherently more prone to bugs and downgrades

## Communication with users

For each new experimental feature, we must:
- GitHub: open a dedicated GitHub discussion in the  [product repository](https://github.com/meilisearch/product/discussions). This discussion should never become stale and be updated regularly. Users need to understand they can interact with us and get quick answers. The discussion should inform users about:
  - Our motivations: why this feature is unstable?
  - Usage: how to activate this feature? Do we need to do a migration with a dump?
  - Planning: what are the conditions to make this feature stable? When do we expect it become stable?
- Meilisearch CLI: update the `--help` command in the Meilisearch binary so it redirects users to the related GitHub discussion and warns them about the unstable state of the features
- Documentation: create a small dedicated page about the purpose of the experimental feature. This page should contain no usage instructions and redirect users to the related GitHub discussion for more information

## Usage warnings

- Experimental features are not recommended for production environments
- Some experimental features, might required re-indexing. In these cases, users will have to use a dump to activate and deactivate an experimental feature. Users will be clearly informed about this in the related GitHub discussion

> ⚠️ Since this process is not mature yet, users might experience issues with their DB when deactivating these features even when using a dump.<br>
> We recommend users always save their data (with snapshots and/or dumps) before activating experimental features.

## Technical details

### Why does Meilisearch need to be restarted when activating an experimental feature?

Meilisearch uses LMDB to store both documents and internal application data, such as Meilisearch tasks. Altering these internal data structures requires closing and re-opening the LMDB environment.

If an experimental feature implementation involves a modification of internal data structures, users must restart Meilisearch. This cannot be done via HTTP routes.

Unfortunately, this might impact most experimental features. However, this might change in the future, or adapted to the context of a specific new feature.

### Why could we need to use a dump?

Since we need to restart Meilisearch, and changes happened on the DB side, an issue could happen when Meilisearch tries to read the “old” data.ms.

Indeed, Meilisearch could try to read the old DB, but does not succeed to do it (crash), or do it badly (inconsistent results). That’s why we ask for dumps between 2 minor versions (there are often a lot of changes in the DB), and that’s why users sometimes will need to use a dump when passing from stable to experimental. The contrary (from experimental to stable) is riskier, even when using a dump, since we are not mature enough yet, but we will be safer and safer in the future.

### Restarting Meilisearch and migrating databases with dumps to activate an experimental feature is inconvenient. Will this improve in the future?

We understand the situation is inconvenient and less than ideal. We will only ask users to use dumps when activating experimental features when it’s strictly necessary.

Avoiding restarts is more difficult, especially for features that currently require database migrations with dumps. We are not currently working on this, but the situation might change in the future.
