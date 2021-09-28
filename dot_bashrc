#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

HISTFILE=$HOME/.histfile
HISTSIZE=100000
HISTFILESIZE=$HISTSIZE
HISTCONTROL=ignorespace:ignoredups:erasedups
HISTTIMEFORMAT=""

_bash_history_sync() {
  builtin history -a
  HISTFILESIZE=$HISTSIZE
  builtin history -c
  builtin history -r
}

history() {
  _bash_history_sync
  builtin history "$@"
}

parseGitBranch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PROMPT_COMMAND=_bash_history_sync

# Useful aliases
alias c='clear'
alias ..='cd ..'
alias ls='ls -lsh --color=auto'
alias ll='ls -lsha --color=auto'
alias mkdir='mkdir -pv'
alias free='free -mt'
alias ps='ps auxf'
alias ip='ip -c'
alias psgrep='ps aux | grep -v grep | grep -i -e VSZ -e'
alias wget='wget -c'
alias histg='history | grep'
alias myip='curl ipv4.icanhazip.com'
alias grep='grep --color=auto'
