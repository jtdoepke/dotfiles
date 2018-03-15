#!/usr/bin/env bash
# Pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Local bin
export PATH="$HOME/.local/bin:$PATH"

# Golang
export GOPATH="$HOME"
export PATH="$GOPATH/bin:$PATH"

# Aliases
alias vim=nvim

