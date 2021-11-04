export ZSH="/home/dolphin/.oh-my-zsh"

export GOPATH="/home/dolphin/go"
export GOBIN=""
export GOROOT="/usr/lib/go"
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin


plugins=(
  zsh-autosuggestions
  zsh-syntax-highlighting
  git
)

source $ZSH/oh-my-zsh.sh

alias c="clear"
alias ls="exa -1 -l --icons"
alias gs="git status"
alias ga.="git add ."
alias gd="git diff"

eval "$(starship init zsh)"
