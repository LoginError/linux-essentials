#!/bin/sh

#
# return 254 if not root.
#
if [ "$UID" -ne "0" ]; then
	echo "You must run this script as root. try \"sudo $0\""
	exit 254
fi

dpkg-reconfigure dash
