#!/usr/bin/env bash

REPO_URL="https://github.com/eltrufas/dotfiles.git"

git clone $REPO_URL /tmp/dotfiles

cd /tmp/dotfiles
bash setup.sh
