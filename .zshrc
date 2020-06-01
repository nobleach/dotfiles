# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
# export FPATH=/usr/local/share/zsh/site-functions:/usr/share/zsh/site-functions:/usr/share/zsh/5.3/functions
# autoload -U promptinit; promptinit
# autoload -U colors; colors
# Fix colors
# export CLICOLOR=1
# export CLICOLOR_FORCE=1
# Set prompt theme
# prompt pure

# Load kubectl right-hand prompt
# source ~/.config/kubectl.zsh
RPROMPT='%{$fg[blue]%}($ZSH_KUBECTL_PROMPT)%{$reset_color%}'

# Load Git status
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
precmd() {
    vcs_info
}
# Load Git completion
# autoload -U ~/.zsh/compinit && ~/.zsh/compinit
# fpath=(~/.zsh $fpath)
# source ~/.zsh/_git/git-completion.zsh

ZSH_THEME="BlackRain"

# Brew cleanup:
alias brewski='brew update && brew upgrade --all && brew cleanup; brew doctor'

# Gnome Keyring
if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi

# Paths I frequent
alias cod='cd ~/code'
alias trix='cd ~/Sites/trix'
alias dna='cd ~/Sites/dna-admin-panel'
alias pdf='cd ~/Sites/pdf-service'
alias tzc='cd ~/Sites/tzero-client'
alias toc='cd ~/Sites/tzero-onboarding-client'
alias twa='cd ~/Sites/tzero-onboarding-webapp'
alias dpa='docker system prune -a'
alias dcu='docker-compose up'
alias dcd='docker-compose down'
alias us='cd ~/Sites/user-service'
alias sit='cd ~/Sites'
alias yti='yarn test:integration'
alias ytu='yarn test:unit'
# DO NOT COMMIT this to source control!!!
source ~/google-k8s.inc

#
# kubectl exec -it $(kubectl get po -n test | awk '/pdf-service/ {print $1}' | head -n1) -n test /bin/bash
function kbash() {
  service=$1
  env=$2
  kubectl exec -it $(kubectl get po -n $env | awk -v pattern="$service" '{ if ( $1 ~ pattern ) print $1 }' | head -n1) /bin/sh -n $env
}
#
# kubectl -n test port-forward auth-service-547684765c-vp9sr 8888:8080
function kpf() {
  service=$1
  env=$2
  pf=$3
  kubectl -n $env port-forward $(kubectl get po -n $env | awk -v pattern="$service" '{ if ( $1 ~ pattern ) print $1 }' | head -n1) $pf
}

function wl() {
  port=$1
  netstat -Waltn | grep "$port"
}
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# plugins=(git kubectl kubetail)

source $ZSH/oh-my-zsh.sh

# User configuration
export TMUX_PLUGIN_MANAGER_PATH=~/.tmux/plugins
# Customize to your needs...
GOPATH=$HOME/go
export PATH=$GOPATH/bin:~/bin:~/.rbenv/bin:~/.rbenv/shims:/usr/local:/usr/local/bin:/usr/local/git/bin:$HOME/.composer/vendor/bin:$PATH
export PATH="$HOME/Library/Haskell/bin:$PATH"
LC_ALL=$LANG

#Ruby env manager
eval "$(rbenv init -)"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

# export NVM_DIR="${HOME}/.nvm"
# source /usr/local/opt/nvm/nvm.sh

alias preview="fzf --preview 'bat --color \"always\" {}'"
# add support for ctrl+o to open selected file in VS Code
# export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort'"
export FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --preview 'bat --color=always --style=header,grid --line-range :300 {}'"
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
# Compilation flags
# export ARCHFLAGS="-arch x86_64"
#
# Rustup src
export RUST_SRC_PATH=~/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0 ]]; then
    fg
    zle redisplay
  else
    zle push-input
    zle clear-screen
  fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z

export PATH="/usr/local/opt/llvm@5/bin:$PATH"
LDFLAGS="-L/usr/local/opt/llvm@5/lib -Wl,-rpath,/usr/local/opt/llvm@5/lib"
LIBRARY_PATH=/usr/local/opt/openssl/lib
export PKG_CONFIG_PATH=/usr/local/opt/openssl/lib/pkgconfig

# TODO.txt
export TODO_DIR="$HOME/Dropbox/tasks"
export TODO_FILE="$TODO_DIR/todo.txt"
export DONE_FILE="$TODO_DIR/done.txt"

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/jimwharton/bin/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jimwharton/bin/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
# if [ -f '/Users/jimwharton/bin/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jimwharton/bin/google-cloud-sdk/completion.zsh.inc'; fi

# Dotnet setup
export DOTNET_ROOT=$HOME/dotnet
export PATH=$PATH:$HOME/dotnet:$HOME/.dotnet/tools
export MSBuildSDKsPath=~/dotnet/sdk/3.1.101/Sdks

# fnm
export PATH=$HOME/.fnm:$PATH
eval "`fnm env --multi`"

# import credentials but don't track these in source control
source $HOME/.credentials.sh

# Bind fzf keys belongs at end of file
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/jim/.sdkman"
[[ -s "/home/jim/.sdkman/bin/sdkman-init.sh" ]] && source "/home/jim/.sdkman/bin/sdkman-init.sh"
