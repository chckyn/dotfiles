if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
fi

alias ec='emacsclient -t'

export EDITOR=emacsclient

# Disable XON/XOFF so C-s works for forward-i-search in bash
stty -ixon

# Eternal bash history
# --------------------
# Undocumented feature which sets the size to "unlimited"
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
# Remove duplicates from history
export HISTCONTROL=erasedups
# Change the file location because some bash sessions truncate
# .bash_history when closing.
export HISTFILE=~/.bash_eternal_history
# Save and reload history after each command finishes. This is nice
# when wanting to access command history from multiple tmux panes
# simultaneously.
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

if [ -z $TMUX ]; then
    tmux new-session -A -s Master
fi
