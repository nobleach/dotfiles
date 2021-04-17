# Path to your oh-my-zsh configuration.
ZSH=/usr/share/oh-my-zsh
. ~/.asdf/plugins/dotnet-core/set-dotnet-home.zsh

export MANPAGER='nvim +Man!'
# initialise completions with ZSH's compinit
autoload -Uz compinit
compinit
# Load kubectl right-hand prompt
# source ~/.config/kubectl.zsh
# RPROMPT='%{$fg[blue]%}($ZSH_KUBECTL_PROMPT)%{$reset_color%}'

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

ZSH_THEME="avit"

# Brew cleanup:
alias brewski='brew update && brew upgrade --all && brew cleanup; brew doctor'

# Paths I frequent
alias cod='cd ~/code'
alias dpa='docker system prune -a && docker volume prune'
alias dcu='docker-compose up'
alias dcd='docker-compose down'
alias sit='cd ~/Sites'
alias vpw='cd ~/Sites/videopeel-web'
alias vpp='cd ~/Sites/videopeel-plugin'
alias yti='yarn test:integration'
alias ytu='yarn test:unit'
alias la='exa -a --group-directories-first'
alias lal='exa -al --group-directories-first'

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

alias kroll='kubectl rollout restart deployment '

function wl() {
  port=$1
  netstat -Waltn | grep "$port"
}
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration
export TMUX_PLUGIN_MANAGER_PATH=~/.tmux/plugins
# Customize to your needs...
GOPATH=$HOME/go
export PATH=$GOPATH/bin:~/bin:~/.rbenv/bin:~/.rbenv/shims:/usr/local:/usr/local/bin:/usr/local/git/bin:$HOME/.composer/vendor/bin:$HOME/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/bin$PATH
export PATH="$HOME/Library/Haskell/bin:$PATH"
LC_ALL=$LANG

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

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/jimwharton/bin/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jimwharton/bin/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
# if [ -f '/Users/jimwharton/bin/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jimwharton/bin/google-cloud-sdk/completion.zsh.inc'; fi

# import credentials but don't track these in source control
source $HOME/.credentials.sh

# Bind fzf keys belongs at end of file
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# ASDF Version manager
. $HOME/.asdf/asdf.sh
# Set JAVA_HOME
. ~/.asdf/plugins/java/set-java-home.zsh
# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
