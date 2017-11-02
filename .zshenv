typeset -gU path
path=(
    $HOME/bin
    $HOME/.rbenv/bin
    $path
)

if (( ${+commands[rbenv]} )); then 
    eval "$(rbenv init -)"
fi
