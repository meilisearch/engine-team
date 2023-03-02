The purpose of this roadmap is to let anyone know about the different steps in the future Meilisearch release: `<<version>>`.

# Draft phase (weeks 1-4)

Starts: 20XX-XX-XX
Ends: 20XX-XX-XX

- [ ] The engine manager creates a new Milestone.
- [ ] In the Milestone, the engine manager add the release date, but also the pre-release phase dates, and the sprint dates to the [Milestone](https://github.com/meilisearch/meilisearch/milestone/<<milestone_id>>).
- [ ] A roadmap issue will automatically created. The engine manager pins this roadmap issue and updates the different dates in the issue description.
- [ ] Planification of the next release content (features, improvements, bug fixes). Meeting with the whole engine team to discuss and agree on what we are going to put in the next release.
- [ ] The engine manager quickly shares the next release plan on #ms-release (internal Slack). It’s for information at this stage, no team can start working since no PRD/specs are available.
- [ ] The PM starts to work on the next feature: write PRD (Product Requirement Documents), organize working groups and product squad works... This might involve discussions with the technical teams and some prototype implementations.
- [ ] At the middle/end of the Draft phase, the PM and the engine manager review together and agree on a firm version of the next release plan. Nothing is strongly definitive, the main goal is to provide a list of tasks ordered by prioritization.
- [ ] Engine team opens issues to add them to the [Milestone](https://github.com/meilisearch/meilisearch/milestone/<<milestone_id>>) and pinged the related teams on it. Issues related to bugs could also be added to the [Milestone](https://github.com/meilisearch/meilisearch/milestone/<<milestone_id>>).
- [ ] The engine manager creates a [GitHub project view](https://github.com/orgs/meilisearch/projects/24/views/5) based on the just created issues. Not all of them should be added to the view, only the new features and improvements. The goal is to clarify the priority of the sprint.
- [ ] The PM provides the firm version of the PRDs, which means the developers have enough information to make the implementation phase begin.

# Implementation phase (weeks 5-8)

Starts: 20XX-XX-XX
Ends: 20XX-XX-XX

- [ ] The engine manager posts a summary of the release dates on #ms-releases (internal  Slack), links the [Milestone](https://github.com/meilisearch/meilisearch/milestone/<<milestone_id>>), and gives an overview of the main features.
- [ ] At the beginning of the Implementation Phase, sync meeting with all open-source team managers about the current implemented release.
- [ ] Engine team implements the planned content of the release according to the PRD. The code changes are merged into the `main` branch. If needed, prototypes will be shared with the users. According to their feedback, we might apply changes to the related feature.
- [ ] The engine manager has to check with the mini-dashboard maintainer if a new version of the mini-dashboard has been released and if we want to integrate it.
- [ ] The [specifications](https://github.com/meilisearch/specifications/pulls) of each feature should be provided by the end of the sprint.
- [ ] Before the end of the Implementation Phase, the engine manager writes the changelog for the release.
- [ ] Review of the changelogs by engine team developers (for the technical information), PM (for the feature promotion) and docs team for English expression.
- [ ] Docs team organizes their preparation for the release: discussion phase, planning and issue creation.
- [ ] Integration team organizes their preparation for the release: opens a central issue on [integration-guides](https://github.com/meilisearch/integration-guides) gathering all the release changes that will impact the integration team and how they will handle them. They also open draft branches in every repository to update the integrations with the new version of Meilisearch.
- [ ] At the end of the Implementation Phase, all the issues related to the [Milestone](https://github.com/meilisearch/meilisearch/milestone/<<milestone_id>>) are solved, meaning every implementation has been merged into `main`. If something differs from the original plan, the engine manager should inform the other teams on #ms-releases (internal Slack). The not-ready issues for the sprint should be removed from the Milestone.

# Pre-release phase (weeks 9-12)

Starts: 20XX-XX-XX
Ends: 20XX-XX-XX

- [ ] Engine team releases the first RC (release candidate) using the prepared changelogs.
- [ ] At the beginning of the Pre-release Phase, sync meeting with each manager of the open-source teams about the coming release. It’s an opportunity to plan and identify the parts where sync will be needed between the different teams during the Pre-release Phase.
- [ ] At the beginning of the Pre-release Phase, the PM and engine manager communicate (on issues) about the RC to encourage people to test them. They also sync with DevRel team for some communication on Discord for the community.
- [ ] Integrations team updates the SDKs and their integrations according to the new release.
- [ ] Docs team updates the documentation to reflect the changes of the new release.
- [ ] According to feedback and bug reports, the engine team modifies the code and fixes bugs as soon as possible. Other RCs are released if necessary.
- [ ] DevRel team writes a blog post “What’s new in <<version>>?”.
- [ ] The engine manager, the PM, and the docs team review the blog post.
- [ ] Integration team shares with the engine manager which SDKs and integrations will be ready or not to be compatible with the next Meilisearch version by the release day. Engine manager adapts the changelogs accordingly.

# Release phase (week 13)

Release date: 20XX-XX-XX

- [ ] Engine team releases the official version and lets the other teams know when the binary and the Docker images are available on #ms-releases (internal Slack).
- [ ] Docs team deploys the new documentation.
- [ ] Integration team releases all the updated integrations.
- [ ] DevRel team takes care of external communications (blog, socials, etc) when all release assets, documentation and integrations are ready.
- [ ] Engine team brings changes from `release-vX.Y.Z` branch of Meilisearch into the `main` branch.
- [ ] Close every part relating to the release in the [product repository](https://github.com/meilisearch/product/): discussions, issues, PRs of the specs are merged...
- [ ] Unpin this current roadmap issue.
- [ ] Close the release [Milestone](https://github.com/meilisearch/meilisearch/milestone/<<milestone_id>>).
