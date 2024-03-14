#! /usr/bin/env zsh
[[ $- != *i* ]] && return

while read file; do
  source "$ZDOTDIR/$file.zsh" &> /dev/null
done <<-EOF
theme
env
utility
aliases
options
plugins
bindkey
prompt
EOF

# source <(ng completion script)

# [[ $(fgconsole 2> /dev/null) == 1 ]] && \
# 	! pidof -s Xorg >/dev/null 2>&1 && \
# 	exec startx $XINITRC &> /dev/null
# true
