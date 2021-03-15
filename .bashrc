#!/bin/bash
#
#   .bashrc
#


    # interactive.
    [ -z "$PS1" ] && return

    # alias.
    alias clipboard="xclip -i -selection clipboard"
    alias cp='cp -v'
    alias ll='ls -vlhF --color'
    alias ls='ls -vF --color'
    alias less='less -R'
    alias mkdir='mkdir -p'
    alias mv='mv -iv'

    # base16 color.
    [ -e "$HOME/.color" ] && bash "$HOME/.color"

    # man page highlighting.
    export LESS_TERMCAP_mb=$'\E[01;31m'
    export LESS_TERMCAP_md=$'\E[01;31m'
    export LESS_TERMCAP_me=$'\E[0m'
    export LESS_TERMCAP_se=$'\E[0m'
    export LESS_TERMCAP_so=$'\E[01;44;33m'
    export LESS_TERMCAP_ue=$'\E[0m'
    export LESS_TERMCAP_us=$'\E[01;32m'

    # bash completition.
    [ -r /etc/bash_completion.d/pass.bash-completion    ] && . /etc/bash_completion.d/pass.bash-completion
    [ -r /etc/docker.autocomplete                       ] && . /etc/docker.autocomplete
    [ -r /usr/share/bash-completion/bash_completion     ] && . /usr/share/bash-completion/bash_completion

    # enviromentals.
    export EDITOR=vim
    export HOSTNAME=$(cat '/etc/hostname')
    export LOCAL='/opt/local'
    export TERMINAL=gnome-terminal
    export VISUAL=vim

    # history.
    export HISTFILESIZE=20000
    export HISTSIZE=10000
    shopt -s histappend
    shopt -s cmdhist
    export HISTCONTROL=ignoredups
    export HISTIGNORE="&:ls:[bf]g:exit"

    # paths.
    for path in $( find "$LOCAL" -name bin 2> /dev/null ); do
        export PATH="$PATH:$path"
    done
    [ -e "$HOME/.bin" ] && export PATH="$PATH:$HOME/.bin"

    # paths - mark.
    if hash mark 2>/dev/null; then cd "$( mark --latest )"; fi

    # ps1.
    PS1b='\[\e[1;97m\]'
    PS1e='\[\e[1;0m\]'
    PS1u='\[\e[1;93m\]'
    PS1r='\[\e[1;0m\]'
    if [[ $USER == "user" ]]; then
        PS1u='\[\e[1;94m\]'
    fi
    if [[ $UID -eq 0      ]]; then
        PS1u='\[\e[1;31m\]'
    fi
    PS1="$PS1b[$PS1u\u$PS1b@$PS1e$HOSTNAME$PS1b] $PS1e\W$PS1b $PS1u::$PS1r "

    # umask.
    umask 0022

    # winsize.
    shopt -s checkwinsize


#
# ^)-.-)%
#
