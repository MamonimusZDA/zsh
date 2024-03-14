#! /usr/bin/env zsh

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/share/cargo/bin:$PATH"
export PATH="$HOME/.local/share/bob/nvim-bin:$PATH"
export PATH="$HOME/.local/share/gem/ruby/3.0.0/bin:$PATH"
export GPG_TTY="${TTY:-$(tty)}"

export SUDO_PROMPT="passwd: "
export TERMINAL="kitty"
export TERMINAL_PROG="kitty"
export TERM="xterm-256color"
export VISUAL="nvim"
export EDITOR="nvim"

export GIT_AUTHOR_NAME="MamonimusZDA"
export GIT_AUTHOR_EMAIL="jms_alejandro@hotmail.com"
export GIT_EDITOR="/bin/nvim"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CONFIG_DIRS="/etc/xdg"
export XDG_RUNTIME_DIR="/run/user/$(id -u)"
export XDG_DESKTOP_DIR="$HOME/Desktop"
export XDG_DOWNLOAD_DIR="$HOME/Downloads"
export XDG_TEMPLATES_DIR="$HOME/Templates"
export XDG_PUBLICSHARE_DIR="$HOME/Public"
export XDG_DOCUMENTS_DIR="$HOME/Documents"
export XDG_MUSIC_DIR="$HOME/Music"
export XDG_PICTURES_DIR="$HOME/Pictures"
export XDG_VIDEOS_DIR="$HOME/Videos"
export XINITRC="$XDG_CONFIG_HOME/x11/xinitrc"
export XAUTHORITY="$XDG_CONFIG_HOME/x11/Xauthority"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GOPATH="$XDG_DATA_HOME/go"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"
export ANSIBLE_CONFIG="$XDG_CONFIG_HOME/ansible/ansible.cfg"
export UNISON="$XDG_DATA_HOME/unison"
export MBSYNCRC="$XDG_CONFIG_HOME/mbsync/config"
export ELECTRUMDIR="$XDG_DATA_HOME/electrum"
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/pythonrc"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export NSS_USER_PATH="$XDG_DATA_HOME/pki/nssdb"
export MYSQL_HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/mysql_history"
export MYSQL_TEST_LOGIN_FILE="${XDG_CONFIG_HOME:-$HOME/.config}/mycli/mycli.log"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export XCOMPOSEFILE="$XDG_CONFIG_HOME/x11/XCompose"
export LUA_INCDIR="${XDG_DATA_HOME}/luarocks"

export WINEARCH="win32"
export WINEPREFIX="${XDG_DATA_HOME}/wineprefixes/nsui"

export HISTSIZE=10000000
export SAVEHIST=10000000
export HISTFILE="$XDG_CACHE_HOME/zsh/history"
export LESSHISTFILE="-"

export MANPAGER='nvim +Man! +"set nocul" +"set noshowcmd" +"set noruler" +"set noshowmode" +"set laststatus=0" +"set showtabline=0" +"set nonumber"'

if [ $(echo $MANPAGER | awk '{print $1}') = nvim ]; then
  export LESS="--RAW-CONTROL-CHARS"
  export MANPAGER="less -s -M +Gg"

  export LESS_TERMCAP_mb=$'\e[1;32m'
  export LESS_TERMCAP_md=$'\e[1;32m'
  export LESS_TERMCAP_me=$'\e[0m'
  export LESS_TERMCAP_se=$'\e[0m'
  export LESS_TERMCAP_so=$'\e[01;33m'
  export LESS_TERMCAP_ue=$'\e[0m'
  export LESS_TERMCAP_us=$'\e[1;4;31m'
fi

export LS_COLORS="$(vivid generate dracula)"
export LF_ICONS=${"$(sed 's/ /=/' ~/.config/diricons)"//$'\n'/:}
export BAT_THEME="Coldark-Dark"

export NEWT_COLORS='
    root=black,black
    roottext=black,black

    title=magenta,black
    label=cyan,black
    helpline=black,black

    border=white,black
    window=black,black
    shadow=black,black

    button=black,cyan
    actbutton=black,magenta
    compactbutton=gray,black

    checkbox=white,black
    actcheckbox=black,white

    entry=white,black
    disentry=gray,black

    listbox=white,black
    actlistbox=blue,black
    sellistbox=gray,black
    actsellistbox=gray,black

    textbox=cyan,black
    acttextbox=black,black

    fullscale=black,black
    emptyscale=black,black
'

export FZF_DEFAULT_OPTS='--color=fg:#f8f8f2,hl:#bd93f9 --color=fg+:#f8f8f2,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4 --color=border:#ffffff'

export ZINIT_HOME="${ZINIT_HOME:-${XDG_DATA_HOME:-${HOME}/.local/share}/zinit}"

export ZSH_FZF_HISTORY_SEARCH_FZF_EXTRA_ARGS="-i --no-multi --height=10% --layout=reverse"
export ZSH_FZF_HISTORY_SEARCH_EVENT_NUMBERS=0
export ZSH_FZF_HISTORY_SEARCH_DATES_IN_SEARCH=0
export ZSH_FZF_HISTORY_SEARCH_REMOVE_DUPLICATES='true'

export OS="$(uname -o | tr '[:lower:]' '[:upper:]')"
