# How to make this asset available

This asset requires the following steps to be properly released:
1) Create a Pull Request from your fork and branch
1) The PR will be reviewed and merged
1) The maintainers will then create a release, which triggers the `deploy` phase of the Travis build
1) The `deploy` phase pushes an updated image of the asset to Docker Hub

# Release schedule
We anticipate that this asset will be release rarely - only when issues warrant a correction.

# Dependencies

This asset uses the RPM installer package of the Appsody CLI, which is produced by the Appsody CLI build process. That package is referenced by the `Dockerfile` contained in this repo and it is currently set to consume a specific release of the Appsody CLI. This release is configuresd as a Travis environment variable.

If significant changes to the `appsody extract` command are introduced by a CLI release, this asset should be rebuilt referencing a newer version of the CLI.
