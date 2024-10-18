# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="lukerandall" #This theme works well in most environments :)

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="false"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

#echo "Loading plugins..."

plugins=(
    git
    docker
    docker-compose
    zsh-syntax-highlighting
    command-not-found
    gcloud
    git-auto-fetch
    pip
    kube-ps1
)
#    kubectl
#    zsh-autosuggestions Used to be in the list above, but I removed it for now

#echo "Sourcing Oh My Zsh..."

source $ZSH/oh-my-zsh.sh

# User configuration

#echo "Sourcing generic rc..."

. ~/.generic_rc

export EDITOR='vim'
setopt HIST_IGNORE_SPACE

#echo "Kubernetes stuff..."

# get zsh complete kubectl
source <(kubectl completion zsh)
alias kubectl=kubecolor
# make completion work with kubecolor
compdef kubecolor=kubectl

#echo "nvm stuff..."

#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#echo "sdkman stuff..."

PROMPT='$(kube_ps1)'$PROMPT
#PROMPT='$(kube_ps1)'$PROMPT
#RPROMPT='$(kube_ps1)'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/hanke/.sdkman"
[[ -s "/home/hanke/.sdkman/bin/sdkman-init.sh" ]] && source "/home/hanke/.sdkman/bin/sdkman-init.sh"
