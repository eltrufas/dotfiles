#!/usr/bin/env bash
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
