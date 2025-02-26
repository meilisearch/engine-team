The purpose of this roadmap is to let anyone know about the different steps in the future Meilisearch release: `<<version>>`.

# Draft phase (weeks 1-4)

- [ ] EM creates a new Milestone. This roadmap issue is automatically created.
- [ ] EM pins this roadmap issue to the repository.
- [ ] Planification of the next release content (features, improvements, bug fixes). Meeting with the whole engine team to discuss and agree on what we are going to put in the next release.
- [ ] Ensure the main features have PRDs.
- [ ] Engine team opens issues to add them to the [Milestone](https://github.com/meilisearch/meilisearch/milestone/<<milestone_id>>) and pinged the related teams on it. Issues related to bugs could also be added to the [Milestone](https://github.com/meilisearch/meilisearch/milestone/<<milestone_id>>).
- [ ] EM updates the [delivery table of the team](https://www.notion.so/meilisearch/a30db6857c884703b25d6fcd625b97d2?v=a4b5caebc49c4d73a4526c0e51be6f23) (internal link) based on the just created issues. The goal is to clarify the priority of the sprint.
- [ ] At the end of the Draft phase, the PM and the engine manager review together and agree on a firm version of the next release plan. The PM provides the firm version of the PRDs, which means the developers have enough information to begin the implementation phase.

# Implementation phase (weeks 5-8)

- [ ] Engine team implements the planned content of the release according to the PRD. The code changes are merged into the `main` branch. If needed, prototypes will be shared with the users. According to their feedback, we might apply changes to the related feature.
- [ ] EM checks if a new version of the mini-dashboard has been released (or should be) and if we want to integrate it. If yes, EM opens an issue to ensure the integration of this change into the release.
- [ ] Usage of each feature should be provided in the related PRD (if no PRD, in the GitHub issue) by the end of the sprint.
- [ ] Engine team writes the changelog for the release.
- [ ] Review of the changelogs by engine team developers (for the technical information), & PM (for the feature promotion).
- [ ] At the end of the phase, if features are missing or are not ready to be integrated into the release, EM should inform the other teams on #ms-releases (internal Slack). The not-ready issues for the sprint should be removed from the Milestone.
- [ ] Define the animal emoji mascot of the release 🤓 Check the already chosen mascots [here](https://www.notion.so/meilisearch/Releases-3d6755c8a27b42b5960a552c06bc49d7) (internal link)

# Pre-release phase (weeks 9-12)

- [ ] Engine team releases the first RC (release candidate) using the prepared changelogs.
- [ ] At the beginning of the Pre-release Phase, the PM on Product discussions about the RC to encourage people to test them. If needed, they also sync with DevRel team for some communication on Discord for the community.
- [ ] SDKs are updated according to the new Meilisearch release & Docs team updates the documentation to reflect the changes. Engine team developers should be aware of where they need to intervene for both teams (review PRs, organize meetings to share knowledge about the feature...)
- [ ] According to feedback and bug reports, the engine team modifies the code and fixes bugs as soon as possible. Other RCs are released if necessary.
- [ ] Docs team reviews the final changelogs.
- [ ] Engine manager updates the [Table of Truth](https://www.notion.so/meilisearch/Table-of-Truth-5b0a2494899c4202b3544034c6942dcc) (internal link) with PRDs, product discussions (for experimental features) and issues (if changed are applied and not related to any PRDs)
- [ ] Engine team ensures the feature usages described in PRDs are up-to-date with the latest changes made during pre-release.
- [ ] Engine team creates/updates a product discussion for the experimental features released during the sprint.

# Release phase (week 13)

Release date: 20XX-XX-XX

- [ ] Engine team releases the official version and lets the other teams know when the binary and the Docker images are available on #ms-releases (internal Slack). 
The following teams must be pinged: documentation, integration, devrel, and cloud to ensure the deployment of their activities on their side.
- [ ] Engine team brings changes from `release-vX.Y.Z` branch of Meilisearch into the `main` branch.
- [ ] PM closes every part relating to the release in the [product repository](https://github.com/meilisearch/product/)
- [ ] Engine team updates the [Open API file](https://github.com/meilisearch/open-api/blob/main/open-api.json). The PR must be reviewed by the PM.
- [ ] Unpin this current roadmap issue.
- [ ] EM merges the [changelogs PR](https://github.com/meilisearch/engine-team/pulls).
- [ ] EM ensures all the issues in the [Milestone](https://github.com/meilisearch/meilisearch/milestone/<<milestone_id>>) are closed or removed from the Milestone (including this issue when everything is done).
- [ ] EM closes the release [Milestone](https://github.com/meilisearch/meilisearch/milestone/<<milestone_id>>).
