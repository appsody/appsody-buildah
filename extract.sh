#!/bin/bash

# gitsource variable is supplied by the caller.
cd /workspace/$gitsource

# Extract everything into /workspace/extracted, the image
# content goes to the vortex, content in the current
# folder into user-app, and the rest, as per the mounts.
appsody extract --buildah --target-dir /workspace/extracted -v
