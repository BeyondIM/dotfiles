#!/usr/bin/env bash
dir=$(cd "${0%/*}" && pwd)
dotfiles=(
  '.zshenv'
  '.zshrc'
  '.zlogin'
  '.zimrc'
  '.Xresources'
  '.tmux.conf'
  '.irbrc'
  '.gemrc'
  '.aria2/aria2.conf'
  'bin'
  '.config/youtube-dl'
  '.config/i3'
  '.config/fontconfig'
)
for i in "${dotfiles[@]}"; do
  if [[ "${i%/*}" != "$i" ]] && [[ ! -d "${HOME}/${i%/*}" ]]; then
    mkdir -p "${HOME}/${i%/*}"
  fi
  rm -rf "${HOME}/$i"
  ln -sf "${dir}/$i" "${HOME}/$i"
done
