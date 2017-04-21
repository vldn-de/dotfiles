#
# ~/.bash_profile
#
#export JAVA_HOME=/usr/lib/jvm/java-8-jdk
sudo wmname LG3D
export PATH=$PATH:/home/sven/bin:/home/sven/dev/arm/bin/
[[ -f ~/.zshrc]] && . ~/.zshrc
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
