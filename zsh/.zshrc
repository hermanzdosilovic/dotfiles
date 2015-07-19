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
unsetopt CORRECT_ALL

# Configure LaTeX
export LATEX_HOME="/usr/local/texlive"
export PATH="$LATEX_HOME/2015/bin/x86_64-darwin:$PATH"
