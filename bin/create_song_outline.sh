#!/bin/bash

[[ $# == 0 ]] && echo Give me some chords && exit

cat <<HEADER
X: 1
C: Composer
T: Title
Z: Dean Turpin $(date +%Y)
M: 4/4
L: 1/4
K: C
HEADER

echo -n "|"

for chord in $*; do
  echo -n " \"$chord\" Z |"
done

echo
