#!/bin/bash
# ps2client.sh by Naomi Peori (naomi@peori.ca)
# changed to use Git by Mathias Lafeldt <misfire@debugon.org>
# updated to build ps2sdk-ports by Daniel R Franzini <daniel.franzini@gmail.com>

## Download the source code.
if test ! -d "ps2sdk-ports/.git"; then
	git clone https://github.com/ps2dev/ps2sdk-ports && cd ps2sdk-ports || exit 1
else
	cd ps2sdk-ports &&
		git pull && git fetch origin &&
		git reset --hard origin/master || exit 1
fi

## Build and install.
make || { exit 1; }
