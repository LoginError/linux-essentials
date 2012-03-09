#!/bin/bash

#
# install linux-essentials
#
# run install scripts in all sub directories
#

for d in *; do
	if [ -e $d/install.sh ]; then
		echo "running $d/install.sh"
		echo "---------------------"
		$d/install.sh
		if [ "$?" -eq 254 ]; then
			echo "retry with sudo. please enter password if prompted."
			sudo $d/install.sh
		fi
		echo ""
	fi
done

