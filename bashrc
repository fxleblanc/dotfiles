# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
export GOPATH=~/go
export PATH=$PATH:~/go/bin

# Ansible password file
ANSIBLE_VAULT_PASSWORD_FILE=~/.vault_pass.txt

function dtc {
	dtach -c /tmp/$1 $2
}

function dta {
	dtach -a /tmp/$1
}

# Tabbed aliases
alias tbd="tabbed -r 2 st -w ''"

# Default editor
export EDITOR='vi'

# Use tor for rsync connections
export RSYNC_CONNECT_PROG='ssh proxyhost nc -x localhost:9050 %h %p'

# VirtualBox alias
alias vb='sudo Virtualbox'

# buku aliases
alias bk='buku'
alias bka='buku -a'
alias bkw='buku -w'

# Journal alias
alias journal='$EDITOR ~/journal/$(date -d now +%Y-%m-%d).md'

# abduco aliases
alias ab='abduco'
alias abc='abduco -c'
alias aba='abduco -a'

# Git aliases
alias gst='git status'
alias ga='git add'
alias gaa='git add .'
alias gcm='git commit'
alias gps='git push'
alias gpsom='git push origin master'
alias gd='git diff'
alias gdc='git diff --cached'
alias gl='git log'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gr='git rebase'

# Youtube-dl aliases
alias ydl='youtube-dl'
alias ydlq='youtube-dl --quiet'

# History
alias hs='history'

# Source bashrc
alias sc='source /home/$USER/.bashrc'

# Youtube dl
alias ydlt='youtube-dl --proxy socks5://localhost:9050'
alias ydla='youtube-dl -x --audio-quality 0'
alias ydlta='youtube-dl --proxy socks5://localhost:9050 -x --audio-quality 0'

# Xclip aliases
alias xp='xclip'
alias xs='xclip -selection clipboard'

# mpv aliases
alias mpvq='mpv --quiet'
alias mpvrq='mpv --really-quiet'

# What is my ip
alias wip='curl ipinfo.io/ip'

# Rsync aliases
alias psn='git -C ~/notes add . && git -C ~/notes commit -m "$(date)" && git -C ~/notes push origin master'
alias pln='git -C ~/notes pull origin master'

# Generate password
function pgn {
    < /dev/urandom tr -dc '!@#$%A-Z-a-z-0-9' | head -c$1
}

# Mount and create directory if it doesn't exist
function dmount {
    if [ ! -d $2 ]; then
        sudo mkdir $2
    fi
    sudo mount $1 $2
}

# Hadoop installation
export HADOOP_HOME=/home/fxleblanc/Documents/Hadoop/hadoop-2.8.2
export PATH=$PATH:$HADOOP_HOME/bin

# Steam with wine
alias steam-wine='wine ~/.wine/drive_c/Program\ Files\ \(x86\)/Steam/Steam.exe >/dev/null 2>&1'

# Emscripten sdk
export PATH=$PATH:/usr/lib/emsdk/emscripten/1.37.22/
