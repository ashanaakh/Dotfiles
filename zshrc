# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="robbyrussell"

plugins=()

source $ZSH/oh-my-zsh.sh

source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export LANG=en_US.UTF-8
export EDITOR="zed"
export DOTFILES="$HOME/.dotfiles"

# Hiveon golang settings.
export GOPATH="$HOME/go"
export GOSUMDB="sum.golang.org"
export GOPROXY="https://proxy.golang.org,direct"
export GONOPROXY="gitlab.com/hiveon/*,pkg.hiveon.dev/*"
export GOPRIVATE=",gitlab.com/hiveon/*,pkg.hiveon.dev/*"
export GONOSUMDB=",gitlab.com/hiveon/*,pkg.hiveon.dev/*"

# Add go binaries to the path.
export PATH="$GOPATH/bin:$PATH"
