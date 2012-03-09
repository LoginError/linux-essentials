#!/bin/bash

LN_FLAGS="-v -s"
DIR=`basedir $0`

#
# return 255 if home directory not found.
#
if [ -z $HOME ]; then
	echo "\$HOME is not set. Trying to use ~"
	HOME=~
	if [ ! -e $HOME ]; then
		echo "WTF! home directory not found. Tried \"$HOME\""
		exit 255
	fi

fi

#
# link files
#
ln $LN_FLAGS $DIR/dot_gitconfig $HOME/.gitconfig
