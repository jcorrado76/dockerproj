This repo is a simple hello world example of how to create a Docker/CircleCI-enabled project from the AWS Cloud9 development environment.

You can run any of the targets in the Makefile.
This circleCI config fully builds and runs when you launch a build from he CircleCI web-browser GUI.

In particular, when developing locally, you can run the `lint`, `validate-circleci`, or `run-circleci-local` targets to check your code (the linting packages, your Dockerfile, and any tests on your application) before pushing commits to the repo, and firing off the CI.
