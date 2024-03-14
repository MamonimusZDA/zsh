#! /usr/bin/env zsh

__ping() {
	grc ping -c5 -A ${@:-1.1.1.1}
}

hostname2address() {
	ping -c1 -A -q $@ | awk '/PING/ {print $3}' | tr -d '()'
}

clear() {
	if (( $+commands[clear] )) && command clear 2>/dev/null; then
		return
	fi
	echoti clear 2>/dev/null
	print -n -- "\e[H\e[2J\e[3J"
	zle clear-screen
}
