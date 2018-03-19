#!/usr/bin/env fish

function __add_to_PATH -a new_path -d "Insert a dir at the beginning of PATH if not already present.";
        if not contains $new_path $PATH
                set -x PATH $new_path $PATH;
        end
end

# Path to pyenv
__add_to_PATH "$HOME/.pyenv/bin"

# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

# Local bin
__add_to_PATH "$HOME/.local/bin"

# Golang
set -x GOPATH $HOME
__add_to_PATH "$GOPATH/bin"

# Editor
set -x EDITOR nvim

# Pipenv
set -x PIPENV_VENV_IN_PROJECT 1
set -x PIPENV_DEFAULT_PYTHON_VERSION 3.6

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

# Forward aliases to sudo
function sudo
	if functions -q $argv[1]
		set argv fish -c "$argv"
	end
	command sudo $argv
end
