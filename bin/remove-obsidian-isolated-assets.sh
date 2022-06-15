#!/usr/bin/env bash
dir=$HOME/Documents/obsidian
for i in $dir/assets/*.png; do
  [[ -f "$i" ]] || continue
  num=$(grep -rn -e "${i##*/}" --include \*.md $dir | wc -l)
  if [[ $num -eq 0 ]]; then
    echo "$i"
    rm "$i"
  fi
done
