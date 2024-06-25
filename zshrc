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
alias x="exit"
alias gs="git status"
alias ga.="git add ."
alias gd="git diff"
alias gpom="git pull origin main"
alias gcm="git checkout main"
alias gcs="git checkout staging"
alias lg="lazygit"
alias ld="lazydocker"
alias ls='lsd -la'
alias ssh="kitty +kitten ssh"
alias lama='ollama run llama3 '

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

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

