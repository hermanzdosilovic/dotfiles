#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

[[ -n "$TMUX" ]] && return

[[ "$XDG_VTNR" -eq 1 ]] && exec startx
