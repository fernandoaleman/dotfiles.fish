eval (/opt/homebrew/bin/brew shellenv)

starship init fish | source
zoxide init fish | source

set -U fish_greeting # disable fish greeting
set -U fish_key_bindings fish_vi_key_bindings

fish_add_path $HOME/.config/bin

source /opt/homebrew/opt/asdf/libexec/asdf.fish

[ -f $HOME/.config/fish/config.fish.local ] && source $HOME/.config/fish/config.fish.local
