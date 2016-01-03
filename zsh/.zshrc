# Executes commands at the start of an interactive session. [3/6]

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Configure .rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

unalias rm
unalias cp
unsetopt correct_all

# Configure LaTeX
export LATEX_HOME="/usr/local/texlive"
export PATH="$LATEX_HOME/2015/bin/x86_64-darwin:$PATH"

export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_51.jdk/Contents/Home"
export PATH="$JAVA_HOME/bin:$PATH"

stty ixany
stty ixoff -ixon
stty stop undef
stty start undef

export EVC=true
