# set command line mode to vi
# set -o vi

# Initial $PATH.
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$HOME/.docker/bin:"$HOME/.dotnet/tools":$PATH

# dotnet config
# install easy-dotnet with: dotnet tool install -g EasyDotnet
# added to path above
#
HISTFILE="$HOME/.zsh_history"
HISTSIZE=100000
SAVEHIST=100000
setopt SHARE_HISTORY         # Share history between all sessions
setopt INC_APPEND_HISTORY    # Write to the history file immediately, not just when the shell exits
setopt EXTENDED_HISTORY      # Write the history file in the ":start:elapsed;command" format
setopt HIST_IGNORE_DUPS      # Don't record an entry that was just recorded again
setopt HIST_SAVE_NO_DUPS     # Don't write duplicate entries in the history file

# source antidote
source "$HOME/.antidote/antidote.zsh"

# Vim mode will clobber CTRL+R
# we need to change when it's initialized
ZVM_INIT_MODE=sourcing

# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load
# source $(brew --prefix)/Cellar/fzf/$(fzf --version | cut -d ' ' -f 1)/shell/key-bindings.zsh

autoload -Uz promptinit && promptinit && prompt pure

alias cnvim="cd ~/.config/nvim && nvim"
alias ctmux="cd ~/.config/tmux && nvim"
alias cghostty="cd ~/.config/ghostty && nvim"
alias fourwords="sort -R /usr/share/dict/words | head -n 4| sed 's/.\*/&/;$!s/$// ' |tr '\n' '-' |sed 's/-$/\n/'"
alias s3stg-cfg="tcli idb show cmsnonprod/aws_s3_configs/stg/us-east-1.aws"
alias dcu="docker compose up"
alias dcd="docker compose down"
alias k="kubectl"
alias kga="kubectl get all"
alias kgp="kubectl get pods"
alias kgs="kubectl get svc"
alias kgc="kubectl get configmap"
alias kdp="kubectl delete pod"
alias kaf="kubectl apply -f"
alias gflic="nvim -q <(git conflicts)"
alias di="docker images"
alias dstopall='docker stop $(docker ps -a -q)'
function dclean() {
    docker rm -v $(docker ps --all --quiet --filter "status=exited")
    docker rmi $(docker images --filter "dangling=true" --quiet)
  }

function kube_sh() {
  POD=$(kubectl get pods | fzf | awk ‘{print $1}’)
  kubectl exec -it $POD /bin/sh
}

# Often I want aliases or env variables that are specific to my employer
# I never want these committed to my public repository
# And if I happen to leave my employer, I don't want them junking up my dotfiles
if [[ -f "$HOME/.employer.zsh" ]]; then
  source  "$HOME/.employer.zsh"
fi

function findandkill(){
 lsof -t -i tcp:$1 | xargs kill
} 

alias killport=findandkill

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

alias ezsh="$EDITOR ~/.zshrc"
alias szsh="source ~/.zshrc"
alias cod="cd ~/Code"
bindkey -s '^Xg1' 'git commit -m "initial commit"'
bindkey -s '^Xgc' 'git commit -m ""\C-b'

listening() {
    if [ $# -eq 0 ]; then
        sudo lsof -iTCP -sTCP:LISTEN -n -P
    elif [ $# -eq 1 ]; then
        sudo lsof -iTCP -sTCP:LISTEN -n -P | grep -i --color $1
    else
        echo "Usage: listening [pattern]"
    fi
  }

# ensure that docker builds for the right architecture
# export DOCKER_BUILDKIT=1
# export DOCKER_DEFAULT_PLATFORM=linux/amd64

#for Go
# export GO_PATH=~/go
# export PATH=$PATH:/$GO_PATH/bin
alias air='$(go env GOPATH)/bin/air'

# replace ls with eza
alias ls="eza --icons=always"

# mise tool version manager
eval "$(mise activate zsh)"

# opam configuration
[[ ! -r $HOME/.opam/opam-init/init.zsh ]] || source $HOME/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
eval $(opam env)

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)


# opencode
export PATH=/home/jim/.opencode/bin:$PATH
