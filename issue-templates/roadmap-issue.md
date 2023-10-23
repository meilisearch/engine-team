The purpose of this roadmap is to let anyone know about the different steps in the future Meilisearch release: `<<version>>`.

# Draft phase (weeks 1-4)

Starts: 20XX-XX-XX
Ends: 20XX-XX-XX


- [ ] EM creates a new Milestone. This roadmap issue is automatically created.
- [ ] EM pins this roadmap issue to the repository.
- [ ] EM adds the release dates to this roadmap issue in the different sections.
- [ ] EM add this roadmap issue link to the [Milestone](https://github.com/meilisearch/meilisearch/milestone/<<milestone_id>>) description.
- [ ] Planification of the next release content (features, improvements, bug fixes). Meeting with the whole engine team to discuss and agree on what we are going to put in the next release.
- [ ] PM quickly shares the next release plan on #ms-release (internal Slack). It’s for information at this stage, nothing definitive.
- [ ] Creation of PRDs.
- [ ] Engine team opens issues to add them to the [Milestone](https://github.com/meilisearch/meilisearch/milestone/<<milestone_id>>) and pinged the related teams on it. Issues related to bugs could also be added to the [Milestone](https://github.com/meilisearch/meilisearch/milestone/<<milestone_id>>).
- [ ] The engine manager creates a [GitHub project view](https://github.com/orgs/meilisearch/projects/24/views/5) based on the just created issues. Not all of them should be added to the view, only the new features and improvements. The goal is to clarify the priority of the sprint.
- [ ] At the end of the Draft phase, the PM and the engine manager review together and agree on a firm version of the next release plan. The PM provides the firm version of the PRDs, which means the developers have enough information to begin the implementation phase.

# Implementation phase (weeks 5-8)

Starts: 20XX-XX-XX
Ends: 20XX-XX-XX

- [ ] EM posts a summary of the release dates on #ms-releases (internal  Slack), links the [Milestone](https://github.com/meilisearch/meilisearch/milestone/<<milestone_id>>), and gives an overview of the main features.
- [ ] At the beginning of the Implementation Phase, sync meeting with team managers (docs, cloud and integration) about the current implemented release.
- [ ] Engine team implements the planned content of the release according to the PRD. The code changes are merged into the `main` branch. If needed, prototypes will be shared with the users. According to their feedback, we might apply changes to the related feature.
- [ ] EM checks with the mini-dashboard maintainer if a new version of the mini-dashboard has been released and if we want to integrate it.
- [ ] [Specifications](https://github.com/meilisearch/specifications/pulls) of each feature should be provided by the end of the sprint.
- [ ] EM writes the changelog for the release.
- [ ] Review of the changelogs by engine team developers (for the technical information), PM (for the feature promotion) and docs team for English expression.
- [ ] Integration and docs organize their preparation for the release. If possible, the implementations for SDKs start during this phase, as soon as the features are ready.
- [ ] At the end of the phase, if features are missing or are not ready to be integrated into the release, EM should inform the other teams on #ms-releases (internal Slack). The not-ready issues for the sprint should be removed from the Milestone.

# Pre-release phase (weeks 9-12)

Starts: 20XX-XX-XX
Ends: 20XX-XX-XX

- [ ] Engine team releases the first RC (release candidate) using the prepared changelogs.
- [ ] At the beginning of the Pre-release phase, sync meeting with team managers (docs, cloud and integration) about the coming release. It’s an opportunity to plan and identify the parts where sync will be needed between the different teams during the Pre-release Phase.
- [ ] At the beginning of the Pre-release Phase, the PM and EM communicate (on issues) about the RC to encourage people to test them. If needed, they also sync with DevRel team for some communication on Discord for the community.
- [ ] SDKs are updated according to the new Meilisearch release.
- [ ] Docs team updates the documentation to reflect the changes of the new Meilisearch release.
- [ ] According to feedback and bug reports, the engine team modifies the code and fixes bugs as soon as possible. Other RCs are released if necessary.
- [ ] DevRel team writes a blog post “What’s new in <<version>>?”.
- [ ] Review the blog post.

# Release phase (week 13)

Release date: 20XX-XX-XX

- [ ] Engine team releases the official version and lets the other teams know when the binary and the Docker images are available on #ms-releases (internal Slack).
- [ ] Deployment of the new documentation.
- [ ] Release of all the updated integrations.
- [ ] DevRel team takes care of external communications (blog, socials, etc) when all release assets, documentation and integrations are ready.
- [ ] Engine team brings changes from `release-vX.Y.Z` branch of Meilisearch into the `main` branch.
- [ ] Close every part relating to the release in the [product repository](https://github.com/meilisearch/product/): discussions, issues, PRs of the specs are merged...
- [ ] Unpin this current roadmap issue.
- [ ] Close the release [Milestone](https://github.com/meilisearch/meilisearch/milestone/<<milestone_id>>).
