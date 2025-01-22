if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path -g ~/.local/bin

set -x BAT_THEME 'base16'
set -x GIT_EXTERNAL_DIFF difft

source "$HOME/.cargo/env.fish"

alias bat="batcat"

alias devup="devcontainer up --workspace-folder . --mount type=bind,source=$HOME/.bashrc,target=/home/guest/.bashrc"
alias devex="devcontainer exec --workspace-folder . /bin/bash"
