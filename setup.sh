#!/usr/bin/env bash
if [ -x "$(command -v stow)" ]; then
  echo 'Error: stow is not installed.' >&2
  exit 1
fi

progs=$@
echo $progs
if [ "$#" -eq 0 ]; then
  echo No args provided, setting everything up.
  progs="*/"
fi

for p in $progs; do
  echo Creating symlinks for $p
  stow $p
done
