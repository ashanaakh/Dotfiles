# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

plugins=(zsh-syntax-highlighting zsh-completions git docker)

source $ZSH/oh-my-zsh.sh

# path
export PATH=$HOME/.gem/ruby/2.4.0/bin/:$PATH
export PATH="$PATH:$HOME/.rvm/bin"

# default editor
export EDITOR='vim'

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# env
DOTFILES=$HOME/.dotfiles

# aliases
source $DOTFILES/aliases

# gcloud cli
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'

source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
