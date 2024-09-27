# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# set command line mode to vi
set -o vi
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:/opt/homebrew/bin:$HOME/.asdf/bin:$HOME/.docker/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Add brew installed asdf
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

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
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git asdf)

source $ZSH/oh-my-zsh.sh

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# trigger-oidc-curl, triggerctl, tcli, kubectl bin PATH

alias ezsh="$EDITOR ~/.zshrc"
alias szsh="source ~/.zshrc"
alias cod="cd ~/Code"

# for Ruby
GEM_HOME=$HOME/gems
export PATH=$PATH:$HOME/gems/bin:$HOME/workstation/trigger/trigger-oidc-curl/bin:$HOME/workstation/trigger/tcli/bin:$HOME/workstation/trigger/triggerctl/bin:$HOME/workstation/trigger/kubectl/bin

# tcli bash-completion, Please uncomment this section (the 3 lines below) if your default shell is bash
#if [ -f $HOME/workstation/trigger/tcli/etc/tcli-completion.bash  ]; then
#  . $HOME/workstation/trigger/tcli/etc/tcli-completion.bash
#fi
#
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
# source "/Users/jim.wharton/.asdf/installs/rust/1.70.0/env"

# opam configuration
[[ ! -r /Users/jim.wharton/.opam/opam-init/init.zsh ]] || source /Users/jim.wharton/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

# Set JAVA_HOME
# . ~/.asdf/plugins/java/set-java-home.zsh

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

# dotnet from asdf
# . ~/.asdf/plugins/dotnet/set-dotnet-env.zsh
# Add dotnetcore
# export PATH="$PATH:/Users/jim.wharton/.dotnet/tools"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
alias ls="eza --icons=always"
