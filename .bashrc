#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export STEAM_RUNTIME=0
export ANDROID_HOME=/opt/android-sdk
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
