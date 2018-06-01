# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

plugins=(zsh-syntax-highlighting git)

source $ZSH/oh-my-zsh.sh

# Golang environment variables
export GOPATH=$HOME/golg
export GOBIN=$HOME/golg/bin

# Specific for awesome archlinux
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# PATH
PATH="$HOME/.rbenv/bin:$PATH"
PATH="$HOME/.rbenv/shims:$PATH"
PATH="$GOBIN:$PATH"
PATH="$HOME/root/bin:$PATH"

# Default editor
export EDITOR=vim

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"
# ENV
DOTFILES=$HOME/.dotfiles

# Aliases
alias kc="kubectl"

# Add Kite binary to PATH to use it like gem
export PATH="$HOME/work/rubykube/kite/bin:$PATH"
export PATH="$HOME/junk/RubyMine-2018.1.1/bin:$PATH"

# Terraform completion
autoload -U +X bashcompinit && bashcompinit
complete -C /usr/local/bin/terraform terraform

# For Termite `terminal with currenct directory` keybilling
#if [[ $TERM == xterm-termite ]]; then
#  . /etc/profile.d/vte.sh
#  __vte_osc7
#fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/root/bin/google-cloud-sdk/path.zsh.inc" ]; then source "/$HOME/root/bin/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/root/bin/google-cloud-sdk/completion.zsh.inc" ]; then source "/$HOME/root/bin/google-cloud-sdk/completion.zsh.inc"; fi

# Completitions
source <(kubectl completion zsh)
source <(helm completion zsh)

