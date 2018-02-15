# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

plugins=(zsh-syntax-highlighting git)

source $ZSH/oh-my-zsh.sh

# Golang environment variables
export GOPATH=$HOME/go
export GOBIN=$HOME/go/bin

# PATH
PATH="$HOME/.rbenv/bin:$PATH"
PATH="/home/ali/.rbenv/shims:$PATH"
#PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
PATH="$GOBIN:$PATH"

# Default editor
export EDITOR=vim

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# ENV
DOTFILES=$HOME/.dotfiles

# Aliases
alias kc="kubectl"

# Updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then
  source "$HOME/google-cloud-sdk/path.zsh.inc";
fi

# Enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then
  source "$HOME/google-cloud-sdk/completion.zsh.inc";
fi

# Add Kite binary to PATH to use it like gem
export PATH="$HOME/work/kite/bin:$PATH"
export PATH="$HOME/downloads/RubyMine-2017.3.1/bin:$PATH"

# Completitions
source <(kubectl completion zsh)
source <(helm completion zsh)

# export VAULT_ADDR=https://vault.bloomon.io
# export VAULT_ADDR=https://vault.helioscloud.com

# Terraform completion
autoload -U +X bashcompinit && bashcompinit
complete -C /usr/local/bin/terraform terraform

# For Termite `terminal with currenct directory` keybilling
if [[ $TERM == xterm-termite ]]; then
  . /etc/profile.d/vte.sh
  __vte_osc7
fi
