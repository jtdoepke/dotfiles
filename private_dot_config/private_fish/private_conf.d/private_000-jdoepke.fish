#!/usr/bin/env fish

# Set EDITOR
set -x EDITOR nvim

function __add_to_PATH -a new_path -d "Insert a dir at the beginning of PATH if not already present.";
        if not contains $new_path $PATH
                set -x PATH $new_path $PATH;
        end
end

# Add local bin dirs to PATH
__add_to_PATH "$HOME/.local/bin"
__add_to_PATH "$HOME/bin"
__add_to_PATH "$HOME/.cargo/bin"
__add_to_PATH "$HOME/.yarn/bin"

# Pipenv
set -x PIPENV_VENV_IN_PROJECT 1

# Forward aliases to sudo
function sudo
	if functions -q $argv[1]
		set argv fish -c "$argv"
	end
	command sudo $argv
end
