# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="hyperzsh"

plugins=(zsh-syntax-highlighting zsh-completions git docker kubectl)

source $ZSH/oh-my-zsh.sh

# User configuration

# path
export PATH=$HOME/.gem/ruby/2.4.0/bin/:$PATH
export PATH="$PATH:$HOME/.rvm/bin"

# default editor
export EDITOR='vim'

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# env
USER_NAME="Ali Shanaakh"
DOTFILES=$HOME/.dotfiles

# aliases
source $DOTFILES/aliases
# source $DOTFILES/kube

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ashanaakh/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/ashanaakh/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ashanaakh/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/ashanaakh/google-cloud-sdk/completion.zsh.inc'; fi
