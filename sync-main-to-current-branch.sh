#!/bin/bash

set -euo pipefail

MY_BRANCH=$(git branch --show-current)

git checkout main
git pull
git checkout $MY_BRANCH
git merge main

