The purpose of this roadmap is to let anyone know about the different steps in the future Meilisearch release: `<<version>>`.

# Draft phase (weeks 1-4)

Starts: 20XX-XX-XX
Ends: 20XX-XX-XX

- [ ] The core manager open a new Milestone. This will automatically create this roadmap issue. The core manager pins this roadmap issue and updates the different dates in the issue description.
- [ ] Planification of the next release content (features, improvements, bug fixes). Meeting with the whole core team to discuss and agree on what we are going to put in the next release.
- [ ] The core manager quickly shares the next release plan on #ms-release (internal Slack). It’s for information at this stage, no team can start working since no PRD/specs are available.
- [ ] The PM starts to work on the next feature: write PRD (Product Requirement Documents), organize working groups and product squad works... This might involve discussions with the technical teams and some prototype implementations.
- [ ] At the middle/end of the Draft phase, the PM and the core manager review together and agree on a firm version of the next release plan. Nothing is strongly definitive, the main goal is to provide a list of tasks ordered by prioritization.
- [ ] The core manager opens issues to add them to the [Milestone](https://github.com/meilisearch/meilisearch/milestone/<<milestone_id>>). Issues related to bugs could also be added to the [Milestone](https://github.com/meilisearch/meilisearch/milestone/<<milestone_id>>).
- [ ] The PM provides the firm version of the PRDs, which means the developers have enough information to make the implementation phase begin.

# Implementation phase (weeks 5-11)

Starts: 20XX-XX-XX
Ends: 20XX-XX-XX

- [ ] The core manager posts a summary of the release dates on #ms-releases (internal  Slack), links the [Milestone](https://github.com/meilisearch/meilisearch/milestone/<<milestone_id>>), and gives an overview of the main features.
- [ ] At the beginning of the Implementation Phase, sync meeting with all open-source team managers about the current implemented release.
- [ ] Core team implements the planned content of the release according to the PRD. The code changes are merged into the `main` branch. If needed, prototypes will be shared with the users. According to their feedback, we might apply changes to the related feature.
- [ ] The specifications are written: they are useful to officialize the definitive "shape" of the feature. However, feedback and request for changes on the spec can still happen and lead to changes in the related feature.
- [ ] The core manager has to check with the mini-dashboard maintainer (@mdubus) if a new version of the mini-dashboard has been released and if we want to integrate it.
- [ ] At the end of the Implementation Phase, the core manager writes the changelog for the release.
- [ ] Docs team reviews the changelogs.
- [ ] Docs team organizes their preparation: identify the effect of new changes on the documentation: discussion phase and planning.
- [ ] Docs team creates the related issues in the [documentation repository](https://github.com/meilisearch/documentation/) and open the central draft PR for related to the release.
- [ ] Integration team opens a central issue on [integration-guides](https://github.com/meilisearch/integration-guides) gathering all the release changes that will impact the integration team and how they will handle them. They also open draft branches in every repository to update the integrations with the new version of Meilisearch.
- [ ] At the end of the Implementation Phase, all the issues related to the [Milestone](https://github.com/meilisearch/meilisearch/milestone/<<milestone_id>>) are solved, meaning every implementation has been merged into `main`. If something differs from the original plan, the core manager should inform the other teams on #ms-releases (internal Slack).

# Pre-release phase (weeks 12-15)

Starts: 20XX-XX-XX
Ends: 20XX-XX-XX

- [ ] Core team releases the first RC (release candidate) using the prepared changelogs.
- [ ] At the beginning of the Pre-release Phase, sync meeting with each manager of the open-source teams about the coming release. It’s an opportunity to plan and identify the parts where sync will be needed between the different teams during the Pre-release Phase.
- [ ] At the beginning of the Pre-release Phase, the core manager shares the important changes to highlight in the release blog post to the DevRel team.
- [ ] At the beginning of the Pre-release Phase, the PM and core manager communicate (on Slack and issues) about the RC to encourage people to test them.
- [ ] Integrations team updates the SDKs and their integrations according to the new release.
- [ ] Docs team updates the documentation to reflect the changes of the new release.
- [ ] According to feedback and bug reports from the integrations and the docs teams, the core team modifies the code and fixes bugs as soon as possible. Other RCs are released if necessary.
- [ ] DevRel team write a blog post “What’s new in <<version>>?”.
- [ ] The core manager, the PM, and the docs team review the blog post.
- [ ] Integration team confirms the latest RC (so at the end of the Pre-release Phase) works with their DevOps tools

# Release phase (week 16)

Release date: 20XX-XX-XX

- [ ] Core team releases the official version and lets the other teams know when the binary and the Docker images are available on #ms-releases (internal Slack).
- [ ] New documentation deployment by the docs team
- [ ] Release of all the updated integrations by the integration team
- [ ] DevRel team takes care of external communications (blog, socials, etc) but might want for the documentation and the assets of the release to be ready (including Docker image)
- [ ] Bring changes from `stable` branch of Meilisearch into the `main` branch
- [ ] Close every part relating to the release in the [product repository](https://github.com/meilisearch/product/): discussions, issues, PRs of the specs are merged...
- [ ] Tag all the PRs/issues in the [Milestone](https://github.com/meilisearch/meilisearch/milestone/<<milestone_id>>) with the `<<version>>` label.
- [ ] Unpin this current rodamap issue.
- [ ] Close the release [Milestone](https://github.com/meilisearch/meilisearch/milestone/<<milestone_id>>).
