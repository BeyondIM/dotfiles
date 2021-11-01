#!/usr/bin/env bash
dir=$(cd "${0%/*}" && pwd)
dotfiles=(
  '.zshenv'
  '.Xresources'
  '.tmux.conf'
  '.aria2/aria2.conf'
  'bin'
  '.config/youtube-dl'
  '.config/i3'
  '.config/fontconfig'
  '.config/mpv'
)
for i in "${dotfiles[@]}"; do
  if [[ "${i%/*}" != "$i" ]] && [[ ! -d "${HOME}/${i%/*}" ]]; then
    mkdir -p "${HOME}/${i%/*}"
  fi
  rm -rf "${HOME}/$i"
  ln -sf "${dir}/$i" "${HOME}/$i"
done
