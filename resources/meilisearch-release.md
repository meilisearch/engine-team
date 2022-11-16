# Meilisearch release process

This guide is to describe how to make releases and pre-releases for the [Meilisearch repository](https://github.com/meilisearch/meilisearch).

The Meilisearch release cycles last 8 weeks
- 4 weeks of implementation phase: the engine team implements all the planned issues.
- 4 weeks of pre-release phase: the engine team fixes the bugs introduced during the implementation phase. Integration and documentation teams update their scope according to the changes.

At the beginning of the pre-release phase, the first RC is released. Other RC will be done if bugs are found.

At the end of the pre-release phase, the official release is published.

## 🏋️‍♂️ Meilisearch pre-release phase

### How to create the first pre-release (or RC i.e. Release Candidate)

In the Meilisearch repository:

1. Ensure:
- the version of Meilisearch in the `Cargo.toml` files has been updated. Use [our automation](https://github.com/meilisearch/meilisearch/actions/workflows/update-cargo-toml-version.yml) if not -> click on `Run workflow`, and fill the appropriate version before validating. A PR updating all the versions in the `Cargo.toml` files will be created.
- A [GitHub Milestone](https://github.com/meilisearch/meilisearch/milestones) has been opened for this new version.

2. Make sure you are on the `main` branch and pull the last commits:

```bash
git checkout main
git pull origin main
```

3. Create a release branch named `release-vX.X.X` where `X.X.X` is the new version and push this branch

```bash
git checkout -b release-vX.X.X
git push -u origin release-vX.X.X
```

4. Go the the GitHub interface, in the [`Release` section](https://github.com/meilisearch/meilisearch/releases).

5. Click on the `Draft a new release` button

6. Fill the form with:
- the title of the release: `vX.X.Xrc0`
- the tag associated to the release: should be `vX.X.Xrc0`
- ⚠️ the branch on which to push the tag: `release-vX.X.X`. Do not push the tag to `main`!
- the description: add as many details as possible: the PRs, the authors, the new usage, the external contributors we want to thank...
- ⚠️ the `This is a pre-release` check box

![GH release form](../assets/gh-pre-release.png)

7. Finally, when you are sure, click on the `Publish release` button.

The CIs will be triggered to:
- upload binaries to the GitHub RC.
- publish the associated Docker image (`vX.X.X`) to DockerHub.

### What if some bugs are in the RC?

1. Create a new branch starting from the branch `release-vX.X.X` and commit on this new branch.

2. Open and merge the PR originating this new branch and pointing to `release-vX.X.X`

### How to release the next RCs

When all/enough hotfixes have been done to the `release-vX.X.X` branch, create a new RC.
The steps are the same as for `How to create the first pre-release (or RC i.e. Release Candidate)` but starting from the step 3 and with the new RC name.

## 🔥 Meilisearch official release

### How to do the official release

1. Merge the `release-vX.X.X` into the `stable` branch:
```bash
git checkout release-vX.X.X
git pull origin release-vX.X.X
git checkout stable
git pull origin stable
git merge release-vX.X.X
git push origin stable
```

2. Go the the GitHub interface, in the [`Release` section](https://github.com/meilisearch/meilisearch/releases).

3. Click on the `Draft a new release` button

4. Fill the form with:
- the title of the release: `vX.X.X`
- the tag associated to the release: should be `vX.X.X`
- ⚠️ the branch on which to push the tag: `stable`. Do not push the tag to `main`!
- the description. Add as many details as possible: the PRs, the authors, new usage examples, the external contributors we want to thank...
- check the `Set as the latest release`

![GH release form](../assets/gh-release.png)

5. Finally, when you are sure, click on the `Publish release` button.

The CIs will be triggered to:
- upload binaries to the GitHub release.
- publish the Docker images (`latest` and `vX.X.X`) to DockerHub.
- publish binaries for Homebrew and APT

### After the release

Some commits might miss to `main` since the engine-team did some hotfixes merged to the `release-vX.X.X` branch.
You need to bring them back from `stable` to `main` by merging a PR originating `stable` and pointing to `main`.

### How to do patched release (following hotfixes)

It happens some releases come with impactful bugs in production (e.g. indexation or search issues): we obviously don't wait for the next cycle to fix them and we release a patched version of Meilisearch.

1. Create a new release branch starting from `stable`

```bash
git checkout stable; git pull origin stable
git checkout -b release-vX.X.X
git push -u origin release-vX.X.X
```

2. Open a [new GitHub Milestone `vX.X.X`](https://github.com/meilisearch/meilisearch/milestones) related to this new version.

3. Open and merge the PRs (fixing your bugs): they should point to `release-vX.X.X`. Don't forget to change the version name in `Cargo.toml` files! You can use [our automation](https://github.com/meilisearch/meilisearch/actions/workflows/update-cargo-toml-version.yml) if not -> click on `Run workflow`, and fill the appropriate version before validating. A PR updating all the versions in the `Cargo.toml` files will be created.

4. Follow all the steps in the ["How to do the official release" section](#how-to-do-the-official-release) with the patched version name.

5. Same as the official release, if needed, bring the new commits back from `stable` to `main` by merging a PR originating `stable` and pointing to `main`.

## 🎈 Other library release process

The release process of other repositories maintained by the engine team is described in the corresponding CONTRIBUTING.md of each repository.
