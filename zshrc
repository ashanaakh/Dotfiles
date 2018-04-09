ZSH_THEME="robbyrussell"

plugins=(zsh-syntax-highlighting zsh-completions git docker buffalo)

source $ZSH/oh-my-zsh.sh

# gcloud cli
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'

# aliases
alias kc="kubectl"
alias kube="kubectl"
alias goland="open -a GoLand"

eval "$(rbenv init -)"

# Completions
source <(helm completion zsh)
source <(kubectl completion zsh)

autoload -U compinit && compinit
# terraform
autoload -U +X bashcompinit && bashcompinit
complete -C /usr/local/Cellar/terraform/*/bin/terraform terraform
