# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

### RANDOM COLOR SCRIPT ###
colorscript random

### STARTSHIP
eval "$(starship init zsh)"

alias c="clear"
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias np='nano -w PKGBUILD'
alias more=less
alias ls="exa -la"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/robimalco/Desktop/google-cloud-sdk/path.zsh.inc' ]; then . '/home/robimalco/Desktop/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/robimalco/Desktop/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/robimalco/Desktop/google-cloud-sdk/completion.zsh.inc'; fi
