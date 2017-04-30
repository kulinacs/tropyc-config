#!/bin/sh
# Should be run from root directory of project

# Lint Playbooks
find . -type f -name "*.yml" ! -path "*meta*" ! -path "*extra*" | xargs yamllint

# Lint vars
 find *_vars -type f ! -iname vault | xargs yamllint
