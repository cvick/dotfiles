# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\][\d | \T] \u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}[\d | \T] \u@\h:\w\$ '
fi

# Don't put duplicate lines in the history.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups

# append to the history file, don't overwrite it
shopt -s histappend

# Default to human readable figures
alias df='df -h'
alias du='du -h'

# Directory colors
eval `dircolors ~/.dir_colors`
alias ls="ls --color"

# enable color support of ls and also add handy aliases
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# some more ls aliases
alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -CF'

# clear shortcut
alias c="clear"

# Weather
# alias weather="bash ~/.scripts/weather.sh 92630"
alias weather="curl wttr.in/Lake_Forest"

# Moon Phase
alias moon="curl wttr.in/Moon"

# Current IP
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"

# Show mount in columns
alias mount="mount | column -t"

# Do ls after cd
alias cdd='cd "$1" && ls'
alias ccd='cd "$1" && ls'

eval $(thefuck --alias)

# rsync gcode scripts
alias gcodescripts='rsync -avz pi@octopi-MS.local:/usr/local/bin/gcode_scripts ~/octoprint_scripts/'

# cd aliases for home

alias desktophome="cd /cygdrive/d/Desktop"

alias githome="cd /cygdrive/d/Documents/Git"

alias downloadshome="cd /cygdrive/d/Downloads"

# cd alises for work

alias desktopwork="cd /cygdrive/c/Users/cvick/Desktop"

alias gitwork="cd /cygdrive/z/Git"

alias downloadswork="cd /cygdrive/z/Downloads"

#Easier way of finding packages version in apt
alias version="apt-cache policy"
