#!/bin/bash

# Your Git username as recorded in your local commits
MY_NAME="r2meen"

# Fetch all branches so that local commits are counted
git fetch --all --quiet

# Count commits authored by MY_NAME across all branches
COMMIT_COUNT=$(git log --all --pretty=format:"%an" | grep -Fx "$MY_NAME" | wc -l)

echo "Your contributions in Web-Development:"
echo "$MY_NAME: $COMMIT_COUNT commits"