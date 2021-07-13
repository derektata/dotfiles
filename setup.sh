#!/bin/sh
# A simple utility to install/remove my dotfiles using stow

echo "Checking a few things before starting..."

if [[ -f /usr/bin/stow ]]; then
	echo "Stow ✔"
else
	echo "You need to install 'stow' to use this script."
fi

cat << Options

Welcome!

Please select an option:

1 - Install
2 - Remove

Options

read answer;

case $answer in

	1) echo ""
	echo "Installing dotfiles"
	stow config
	stow local
	;;

	2) echo""
	echo "Removing dotfiles"
	stow -D config
	stow -D local
	;;
	*) echo ""
	echo "Not an option...Aborting!"
	;;
esac
