# Only run in interactive shells
[[ $- != *i* ]] && return

# Minimal, readable prompt: user@host:cwd$
PS1='\u@\h:\w\$ '
