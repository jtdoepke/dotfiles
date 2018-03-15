#!/usr/bin/env fish
# Path to pyenv
set -x PATH "$HOME/.pyenv/bin" $PATH

# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

# Local bin
set -x PATH "$HOME/.local/bin" $PATH

# Golang
set -x GOPATH $HOME
set -x PATH "$GOPATH/bin" $PATH

# Aliases
alias vim=nvim

# VSCode proxy settings alias
if type -q code
	function code
		if test -n "$http_proxy"
			command code --proxy-server="$proxy_host" $argv;
		else
			command code $argv;
		end
	end
end
