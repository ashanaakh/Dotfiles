# Path to your oh-my-zsh installation.
ZSH_THEME="robbyrussell"

plugins=(zsh-syntax-highlighting git)

source $ZSH/oh-my-zsh.sh

alias kc="kubectl"

# Terraform completion
autoload -U +X bashcompinit && bashcompinit
complete -C /usr/local/bin/terraform terraform

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/root/bin/google-cloud-sdk/path.zsh.inc" ]; then
  source "/$HOME/root/bin/google-cloud-sdk/path.zsh.inc";
fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/root/bin/google-cloud-sdk/completion.zsh.inc" ];then
  source "/$HOME/root/bin/google-cloud-sdk/completion.zsh.inc";
fi

# Completitions
source <(kubectl completion zsh)
source <(helm completion zsh)

