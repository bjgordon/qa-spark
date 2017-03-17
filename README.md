# QA-Spark

When you don't need a [fire](https://github.com/AusDTO/qa-fire), use a spark.

QA-Spark will simplify checking of PRs (Pull Requests) by deploying the branch to cloud foundry.
 
For now it is only intended for use with jekyll sites that are built with CircleCI.

## How it works

When a PR is created:
1. Circle will build the branch.
2. If the tests pass, Circle sends a webhook to QA-Spark.
3. QA-Spark will fetch the Circle build artifacts, and push them to Cloud Foundry.

When a branch with an open PR is modified:
1. Circle will build the branch.
2. If the tests pass, Circle sends a webhook to QA-Spark.
3. QA-Spark will fetch the latest Circle build artifacts, and push them to Cloud Foundry.

When the PR is closed:
1. Github sends a webhook to QA-Spark.
2. QA-Spark will delete the Cloud Foundry application.

## Setting up CircleCI

* go to https://circleci.com/ and authorize with Github.
* follow your new github repo
* add the following environment variables via the circleci UI

```
CF_API

CF_USER
CF_PASSWORD
CF_ORG
CF_SPACE

```
