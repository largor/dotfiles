#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
~/.config/fastfetch/scripts/pokeman.sh

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='\A [\u ${PWD/*\//}]$ '
PS2='> '
export PATH="~/.config/emacs/bin:$PATH"
export PATH="~/.bin:$PATH"

#autostart tmux
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi
