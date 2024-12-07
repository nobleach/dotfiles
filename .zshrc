# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# set command line mode to vi
set -o vi
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:/opt/homebrew/bin:$HOME/.docker/bin:$PATH

# Path to your oh-my-zsh installation.
# export ZSH="$HOME/.oh-my-zsh"

alias fourwords="sort -R /usr/share/dict/words | head -n 4| sed 's/.\*/&/;$!s/$// ' |tr '\n' '-' |sed 's/-$/\n/'"
alias s3stg-cfg="tcli idb show cmsnonprod/aws_s3_configs/stg/us-east-1.aws"
alias dcu="docker-compose up"
alias dcd="docker-compose down"
alias nppods="tcli runon cmsnonprod kubectl -n cmsnonprod get po"
alias ppods="tcli runon cms kubectl -n cms get po"
alias k="kubectl"
alias kga="kubectl get all"
alias kgp="kubectl get pods"
alias kgs="kubectl get svc"
alias kgc="kubectl get configmap"
alias kdp="kubectl delete pod"
alias kaf="kubectl apply -f"
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
# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)

# source $ZSH/oh-my-zsh.sh

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

# for Ruby
GEM_HOME=$HOME/gems
export PATH=$PATH:$HOME/gems/bin:$HOME/workstation/trigger/trigger-oidc-curl/bin:$HOME/workstation/trigger/tcli/bin:$HOME/workstation/trigger/triggerctl/bin:$HOME/workstation/trigger/kubectl/bin

listening() {
    if [ $# -eq 0 ]; then
        sudo lsof -iTCP -sTCP:LISTEN -n -P
    elif [ $# -eq 1 ]; then
        sudo lsof -iTCP -sTCP:LISTEN -n -P | grep -i --color $1
    else
        echo "Usage: listening [pattern]"
    fi
  }

# tcli source trigger aliases
if [ -f $HOME/.tcli/trigger_aliases  ]; then
  . $HOME/.tcli/trigger_aliases
fi
#
# Set up fzf key bindings and fuzzy completion
eval "$(fzf --zsh)"

# bun completions
[ -s "/opt/homebrew/share/zsh/site-functions/_bun" ] && source "/opt/homebrew/share/zsh/site-functions/_bun"

# bun completions
[ -s "/Users/jim.wharton/.bun/_bun" ] && source "/Users/jim.wharton/.bun/_bun"

# opam configuration
[[ ! -r /Users/jim.wharton/.opam/opam-init/init.zsh ]] || source /Users/jim.wharton/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
eval $(opam env)

# ensure that docker builds for the right architecture
# export DOCKER_BUILDKIT=1
# export DOCKER_DEFAULT_PLATFORM=linux/amd64

# Add trivy
export PATH=$PATH:~/.trivy

[ -f $HOMEBREW_PREFIX/share/forgit/forgit.plugin.zsh ] && source $HOMEBREW_PREFIX/share/forgit/forgit.plugin.zsh

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

#for Go
# export GO_PATH=~/go
# export PATH=$PATH:/$GO_PATH/bin
alias air='$(go env GOPATH)/bin/air'

# for Postgres local psql
export PATH=/opt/homebrew/Cellar/postgresql@16/16.4/bin:$PATH

# pnpm
export PNPM_HOME="/Users/jim.wharton/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# ZSH extensions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
alias ls="eza --icons=always"

# mise tool version manager
eval "$(/Users/jim.wharton/.local/bin/mise activate zsh)"

# moonbit
export PATH="$HOME/.moon/bin:$PATH"
