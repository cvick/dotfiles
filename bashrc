# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Don't put duplicate lines in the history.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups

# Default to human readable figures
alias df='df -h'
alias du='du -h'

# Directory colors
eval `dircolors ~/.dir_colors`
alias ls="ls --color"

# Aliases

#Weather
alias weather="bash ~/.scripts/weather.sh 92630"

#Current IP
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"

#Show mount in columns
alias mount="mount | column -t"

#Do ls after cd
alias cdd='cd "$1" && ls'
alias ccd='cd "$1" && ls'

#rsync gcode scripts
alias gcodescripts='rsync -avz pi@octopi-MS.local:/usr/local/bin/gcode_scripts ~/octoprint_scripts/'

#cd aliases for home

alias desktophome="cd /cygdrive/d/Desktop"

alias githome="cd /cygdrive/d/Documents/Git"

alias downloadshome="cd /cygdrive/d/Downloads"


#cd alises for work

alias desktopwork="cd /cygdrive/c/Users/cvick/Desktop"

alias gitwork="/cygdrive/z/Git"

alias downloadswork="cd /cygdrive/z/Downloads"
