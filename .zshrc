export ZSH="/home/dolphin/.oh-my-zsh"

export GOPATH="/home/dolphin/go"
export GOBIN=""
export GOROOT="/usr/lib/go"
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

export PATH="$HOME/.cargo/bin:$PATH"

export MCFLY_RESULTS=1000

plugins=(
  zsh-autosuggestions
  zsh-syntax-highlighting
  git
  vi-mode
)

source $ZSH/oh-my-zsh.sh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,underline"

alias c="clear"
alias ls="exa -1 -l --icons"
alias gs="git status"
alias ga.="git add ."
alias gd="git diff"
alias gpom="git pull origin main"
alias gcm="git checkout main"
alias gcs="git checkout staging"
alias lg="lazygit"
alias ld="lazydocker"
alias s="kitty +kitten ssh"

alias img="kitty +kitten icat"

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(mcfly init zsh)"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

bindkey -v
