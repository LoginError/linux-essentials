#!/bin/sh

PKG_LIST=`dirname $0`/packages

#
# return 255 if package list file does not exist.
#
if [ ! -e $PKG_LIST ]; then
	echo "$PKG_LIST file does not exists."
	exit 255
fi

#
# return 254 if not root
#
if [ "$UID" != "0" ]; then
	echo "You must run this script as root. try \"sudo $0\""
	exit 254
fi

while read line; do
	if [ -n $line ]; then
		pkg="$line $pkg"
	fi
done < "$PKG_LIST"

apt-get -y install $pkg
