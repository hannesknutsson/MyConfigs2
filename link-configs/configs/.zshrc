# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="lukerandall" #This theme works well in most environments :)

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="false"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

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

source $ZSH/oh-my-zsh.sh

# User configuration

. ~/.generic_rc

export EDITOR='vim'
setopt HIST_IGNORE_SPACE

# get zsh complete kubectl
source <(kubectl completion zsh)
alias kubectl=kubecolor
# make completion work with kubecolor
compdef kubecolor=kubectl
