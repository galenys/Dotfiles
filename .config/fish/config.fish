set PATH /usr/local/Cellar/mtr/0.87/sbin $PATH
set PATH /home/shivbhatia/.local/share/gem/ruby/3.0.0/bin $PATH
set PATH /home/shivbhatia/spicetify-cli/ $PATH
set ANDROID_SDK_ROOT $HOME/Library/Android/Sdk
set PATH $ANDROID_SDK_ROOT/emulator $PATH
set PATH $ANDROID_SDK_ROOT/platform-tools $PATH
set fish_greeting

source $HOME/.cargo/env

abbr brave "open -a 'Brave Browser'"
abbr cdd "cd ~/AllFiles"
abbr c "clear"
abbr v "nvim"
abbr vrc "cd ~/.config/nvim/ && nvim init.lua"
abbr fishrc "nvim ~/.config/fish/config.fish"
abbr g "git"
abbr src "source"
abbr lss "ls -lah"
abbr tmux "tmux -u"
abbr lab "ssh -t sb3320@shell3.doc.ic.ac.uk /vol/linux/bin/sshtolab"
abbr basicvol "amixer set Master 45%"
abbr pserver "python3 -m http.server"
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
alias sicstus='rlwrap ~/sicstus/bin/sicstus'

function cppcompile 
  g++ -std=c++11 -O2 -Wall $argv
end

function fish_prompt
  set_color red --bold
  printf "["

  set_color green
  printf "%s" "$PWD"

  set_color magenta
  printf "%s" (__fish_git_prompt)

  set_color red
  printf "]" 

  set_color blue
  printf "\n> "

#  set_color normal
end

set -xg PYTHONPATH /Users/shivbhatia/Library/Python/3.6 $PYTHONPATH

export BROWSER=firefox
# ghcup-env
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
test -f /home/shivbhatia/.ghcup/env ; and set -gx PATH $HOME/.cabal/bin /home/shivbhatia/.ghcup/bin $PATH

# Switch Ctrl and Caps Lock
setxkbmap -option "ctrl:swapcaps"

# Something to make dmenu work
set LC_CTYPE "en_GB.UTF-8 dmenu"

# START C Tools lectures
set -x ARCH x86_64

set -x TOOLDIR $HOME/c-tools
set -x PATH $TOOLDIR/bin $TOOLDIR/bin/$ARCH $PATH

if set -q MANPATH
  set -x MANPATH $TOOLDIR/man
else
  set -x MANPATH $MANPATH $TOOLDIR/man
end
# END

function pf 
  pacman -Slq --noconfirm | fzf -m --preview 'cat <(pacman -Si {1}) <(pacman -Fl {1} | awk "{print \$2}")' | xargs -ro sudo pacman -S
end

function pr
  sudo pacman -Rns (pacman -Qe | fzf -m | awk '{print $1}')
end

function yf 
  yay -Slq --noconfirm | fzf -m --preview 'cat <(yay -Si {1}) <(yay -Fl {1} | awk "{print \$2}")' | xargs -ro  yay -S
end

function yr
  yay -Rns (yay -Qe | fzf -m | awk '{print $1}')
end

# Generated for envman. Do not edit.
test -s "$HOME/.config/envman/load.fish"; and source "$HOME/.config/envman/load.fish"

zoxide init fish | source
fish_add_path /home/shivbhatia/.spicetify

# opam configuration
source /home/shivbhatia/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

[ -f /usr/share/autojump/autojump.fish ]; and source /usr/share/autojump/autojump.fish
