#!/bin/sh
# Should be run from root directory of project

# Syntax check playbooks
find . -maxdepth 1 -type f \( -iname "*.yml" ! -iname ".*" \) | \
	xargs ansible-playbook --syntax-check 1> /dev/null

# Lint YAML
find . -type f -name "*.yml" | xargs yamllint
