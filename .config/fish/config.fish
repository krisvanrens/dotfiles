if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path -g ~/.local/bin

set -x BAT_THEME 'base16'
set -x GIT_EXTERNAL_DIFF difft
source "$HOME/.cargo/env.fish"
