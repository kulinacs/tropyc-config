#!/bin/sh
# Link to .git/hooks/pre-commit

# Store uncommitted work
git stash -q --keep-index
./tests/check.sh
# Restore uncommitted work
git stash pop -q
