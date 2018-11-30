#!/usr/bin/env bash
if ! [ -x "$(command -v git)" ]; then
  echo 'Error: git is not installed.' >&2
  exit 1
fi

REPO_URL="https://github.com/eltrufas/dotfiles.git"

git clone $REPO_URL $HOME/dotfiles

cd /tmp/dotfiles
bash setup.sh
