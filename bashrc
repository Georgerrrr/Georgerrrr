#!/bin/bash 

export FZF_DEFAULT_COMMAND='rg -l .'

cd_with_fzf() {
  cd $HOME && cd "$(find -type d | fzf --preview="tree -L 1 {}" --bind="space:toggle-preview" --preview-window=:hidden)" && echo "$PWD"
}

C_Projects() {
  cd "$(find ~/Documents/C_Projects -maxdepth 1 | fzf --preview="tree -L 1 {}" --bind="space:toggle-preview" --preview-window=:hidden)"
  tmux
}

mkcd() {
  mkdir ${1}
  cd ${1}
}

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

alias dosbox="flatpak run io.github.dosbox-staging"
