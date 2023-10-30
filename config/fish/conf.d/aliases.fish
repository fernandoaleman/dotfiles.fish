set -Ux VISUAL nvim
set -Ux EDITOR $VISUAL

alias e $EDITOR
alias v $VISUAL
alias ll "ls -alGh"
alias ln "ln -v"
alias mkdir "mkdir -p"

[ -f $HOME/.config/fish/conf.d/aliases.fish.local ] && source $HOME/.config/fish/conf.d/aliases.fish.local
