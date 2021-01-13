#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [[ -z $SSH_AUTH_SOCK ]]; then
  eval `ssh-agent -s`
  [[ -f ~/.ssh/id_rsa ]] && ssh-add ~/.ssh/id_rsa
fi

parse_git_branch() {
  BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
  if [ ! "${BRANCH}" == "" ]
  then
    echo " (${BRANCH}) "
  else
    echo ""
  fi
}

[[ $(uname -s) == "Linux" ]] && is_linux=true || is_linux=false
if [[ $is_linux == true ]]; then
    export BROWSER=/usr/bin/google-chrome-stable
    alias ls="ls --color=auto"
    alias open="xdg-open"
else
    alias ls="ls -G"
    export PATH="/Applications/CMake.app/Contents/bin:$PATH"
    export BASH_SILENCE_DEPRECATION_WARNING=1
    alias nproc="sysctl -n hw.logicalcpu"
fi

export PS1="\[\033[01;32m\]\u\[\e[m\]@\[\033[01;32m\]\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\[\e[93m\]\`parse_git_branch\`\[\e[m\]\\$ "

export EDITOR=/usr/bin/vim

alias alert="notify-send 'Done!' 'Your command in terminal has finished.'; paplay ~/Workspace/dotfiles/horn.wav"
alias docker-clear-none="docker rmi \$(docker images | grep none | awk '{ print \$3 }')"
alias la="ls -la"
alias ll="ls -l"
alias dimgs="docker images --format \"table{{.ID}}\t{{.Repository}}:{{.Tag}}\t{{.CreatedAt}}\t{{.Size}}\""

export PATH="$HOME/go/bin:$HOME/.local/bin:$HOME/.cargo/bin:$HOME/.npm/bin:$PATH"
export NODE_PATH="$NODE_PATH:$HOME/.npm/lib/node_modules"

complete -C /usr/bin/mcli mcli
