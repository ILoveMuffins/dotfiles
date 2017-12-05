test $TERM != "screen"; and exec tmux
set -gx VIMRUNTIME /usr/share/vim/vim80
set -x EDITOR vim

#fish_vi_key_bindings
fish_default_key_bindings

# kolorowanie plikow man
set -gx LESS_TERMCAP_mb \e"[01;31m"
set -gx LESS_TERMCAP_md \e"[01;31m"
set -gx LESS_TERMCAP_me \e"[0m"
set -gx LESS_TERMCAP_se \e"[0m"
set -gx LESS_TERMCAP_so \e"[01;44;33m"
set -gx LESS_TERMCAP_ue \e"[0m"
set -gx LESS_TERMCAP_us \e"[01;32m"

alias wttr='curl wttr.in/Warsaw'
alias d='docker'
alias ls='ls --color -h --group-directories-first'
alias l='ls'
alias c='cd'
alias cd-='cd -'
alias c-='cd -'
alias cd..='cd ..'
alias c..='cd ..'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

alias ld="ls -l | grep '^d'" #lsdirs
# edit vimrc
alias ev="nvim ~/.nvimrc"

alias vim='nvim -O'
alias v='nvim -O'
alias md='mkdir -p'
alias rd='rm -rf'
alias mk='make'
alias mkc='make clean'
alias py='python'
alias cp='cp -i'
alias mv='mv -i'
alias sysctl='systemctl'
alias pt='pytest'

# apt-get
alias install='sudo apt install'
alias remove='sudo apt remove'
alias search='apt search'
alias update='sudo apt update'
alias upgrade='sudo apt update; and sudo apt dist-upgrade'

# aliasy dla popularnych komend gita
alias g="git"

#django
alias mrs="./manage.py runserver"
alias mtest="./manage.py test"

alias y="youtube-dl"
alias tooncar="cd /media/kdrozdza/Dane/ToonCarNowy/; wine ToonCar.exe"
