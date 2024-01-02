if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

export PATH=$PATH:$HOME/go/bin

plugins=(
  zsh-autosuggestions
  zsh-syntax-highlighting
  git
  vi-mode
)

source $ZSH/oh-my-zsh.sh

source ~/powerlevel10k/powerlevel10k.zsh-theme

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,underline"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias c="clear"
alias gs="git status"
alias ga.="git add ."
alias gd="git diff"
alias gpom="git pull origin main"
alias gcm="git checkout main"
alias gcs="git checkout staging"
alias lg="lazygit"
alias ld="lazydocker"
alias ls='lsd -la'
alias s="kitty +kitten ssh"

alias img="kitty +kitten icat"

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(mcfly init zsh)"
alias python=/usr/bin/python3
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/roberto/Desktop/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/roberto/Desktop/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/roberto/Desktop/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/roberto/Desktop/google-cloud-sdk/completion.zsh.inc'; fi
