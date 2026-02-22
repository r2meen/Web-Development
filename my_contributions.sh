#!/bin/bash

# Your Git username
MY_NAME="r2meen"

# Go to the repository folder if needed
# cd /path/to/your/repo

# Count your commits across all branches
COMMIT_COUNT=$(git log --all --pretty=format:"%an" | grep -F "$MY_NAME" | wc -l)

echo "Your contributions in this repository:"
echo "$MY_NAME: $COMMIT_COUNT commits"