# Sprint organization

The engine team, responsible for releasing the Meilisearch binaries, works with a sprint cycle of 8 weeks.
- 4 weeks for the implementation phase: the engine team implements all the planned issues.
- 4 weeks for the pre-release phase: the engine team fixes the bugs introduced during the implementation phase. This time is also necessary for integration and documentation teams since they need to update their scope according to the changes.

At the beginning of the pre-release phase, the first RC is released. Other RCs will be done if bugs are found.

At the end of the pre-release phase, the official release is published.

> 📚 Check out
> - [this guide](./meilisearch-release.md) to know how to concretely run the Meilisearch release
> - [this guide](./delivery-sync-policy.md) to know the requirements regarding the project delivery and the synchronization with the other teams

## Implementation phase

During this phase, the engine team must focus on the issues planned for the next release.

They rely on the [Milestones](https://github.com/meilisearch/meilisearch/milestones) and the [sprint view](https://github.com/orgs/meilisearch/projects/24) related to the release to know the content and the priority of the sprint.

## Pre-release phase

The pre-release phase is a more "relaxing" phase. The main focus of the team is to fix the bugs introduced during the implementation phase, but the bug fixes rarely make everyone 100% busy in the team.

Thus, the pre-release phase is a good opportunity to work on other tasks:

- Work on maintenance issues: refactoring, adding more tests
- Do some discovery with the PM: participating in meetings, doing some exploration, releasing prototypes...
- Work on R&D issues: improving performance, trying to investigate tricky bugs, exploring some complex features we don't even know how to solve on the product side...
- Do presentations and knowledge sharing with the rest of the team
- Write articles for the blog post
- Spend some time reviewing the other teams' PRs (like in the Rust SDK of the integration team) or contribute to other Meili projects
- Any other activities we couldn't prioritize during the implementation phase because focusing on the sprint

If working on R&D or discovery tasks, ensure you have made your job transparent and traceable by the end of the pre-release: create/update an issue, share your knowledge with PM and developers...

> ⚠️ The tasks done during the pre-release should be approved by the manager, but also by the PM to ensure working on impactful features and improvements.

> 🔮 During the pre-release, the engine team also takes some time to define the content of the next sprint.
