#!/bin/bash
# ps2client.sh by Naomi Peori (naomi@peori.ca)
# changed to use Git by Mathias Lafeldt <misfire@debugon.org>
# updated to build gsKit by Daniel R Franzini <daniel.franzini@gmail.com>

## Download the source code.
if test ! -d "gskit/.git"; then
	git clone https://github.com/ps2dev/gskit && cd gskit || exit 1
else
	cd gskit &&
		git pull && git fetch origin &&
		git reset --hard origin/master || exit 1
fi

## Build and install.
./setup.sh || { exit 1; }
