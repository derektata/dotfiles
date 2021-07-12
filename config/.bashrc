#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Load Bash Aliases
if [ -f ~/.config/bash/aliases ] ; then
	. ~/.config/bash/aliases
fi

# Load LF Icons
if [ -f ~/.config/lf/lf-icons ]; then
	. ~/.config/lf/lf-icons
fi

#PS1='[\u@\h \W]\$ '

neofetch
eval "$(starship init bash)"
