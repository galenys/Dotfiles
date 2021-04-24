set PATH /usr/local/Cellar/mtr/0.87/sbin $PATH
set fish_greeting

source $HOME/.cargo/env

abbr brave "open -a 'Brave Browser'"
abbr cdd "cd ~/AllFiles"
abbr c "clear"
abbr v "nvim"
abbr vrc "nvim ~/.config/nvim/init.vim"
abbr fishrc "nvim ~/.config/fish/config.fish"
abbr g "git"
abbr src "source"
abbr lss "ls -lah"
abbr tmux "tmux -u"
abbr lab "ssh -t sb3320@shell3.doc.ic.ac.uk /vol/linux/bin/sshtolab"
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'

function fish_prompt
	set_color red --bold
	printf "["

	set_color yellow
	printf "%s" "$PWD"
	
	set_color magenta
	printf "%s" (__fish_git_prompt)
	
	set_color red
	printf "]" 
	
	set_color blue
	printf "\n> "
	
	set_color normal
end

set -xg PYTHONPATH /Users/shivbhatia/Library/Python/3.6 $PYTHONPATH

export BROWSER=firefox
# ghcup-env
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
test -f /home/shivbhatia/.ghcup/env ; and set -gx PATH $HOME/.cabal/bin /home/shivbhatia/.ghcup/bin $PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/shivbhatia/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

