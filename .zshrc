# Welcome
echo -ne "Welcome, It's "; date '+%A, %B %-d %Y'

# git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
# ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
# ZSH_THEME="spaceship"
ZSH_THEME="robbyrussell"

plugins=(
  git

  # git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  zsh-autosuggestions

  # git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  zsh-syntax-highlighting

  # git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z
  zsh-z
)

source $ZSH/oh-my-zsh.sh

# alias
alias ..='cd ..'

# Node Package Manager
alias nio='ni --prefer-offline'
alias d="nr dev"
alias p="nr play"
alias l="nr lint"
alias t="nr test"
alias b="nr build"

# Git
alias gb="git branch"
alias gbd="git branch -d"

alias gc="git checkout"
alias gcb"git checkout -b"

# Check the most used commands
function muc() {
  history | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n10
}

# Run ls immediately when you change directory.
function cd() {
  if [ -d $1 ]; then
    builtin cd $1
    ls
  else 
    echo No such file or directory: $1
  fi
}

function dir() {
  mkdir $1 && cd $1
}

function i() {
  cd ~/i/$1
}

function f() {
  cd ~/f/$1
}

function w() {
  cd ~/w/$1
}
