#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [[ -z $SSH_AUTH_SOCK ]]; then
  eval `ssh-agent -s`
  ssh-add ~/.ssh/id_rsa
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

export PS1="\[\033[01;32m\]\u\[\e[m\]@\[\033[01;32m\]\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\[\e[93m\]\`parse_git_branch\`\[\e[m\]\\$ "

export BROWSER=/usr/bin/google-chrome-stable
export EDITOR=/usr/bin/vim

alias alert="notify-send 'Done!' 'Your command in terminal has finished.'"
alias docker-clear-none="docker rmi \$(docker images | grep none | awk '{ print \$3 }')"
alias la="ls -la"
alias ll="ls -l"
alias ls="ls --color=auto"
alias open="xdg-open"
alias dimgs="docker images --format \"table{{.ID}}\t{{.Repository}}:{{.Tag}}\t{{.CreatedAt}}\t{{.Size}}\""

export PATH="$HOME/.local/bin:$PATH"
