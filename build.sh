#!/usr/bin/env bash
# SPDX-License-Identifier: MIT
# Copyright (c) 2020 Chua Hou

# update style
cp notesStyle.ts $HOME/.TeXmacs/packages/notesStyle.ts

# find all .tm files newer than their .html counterparts
for tmfile in $(find . -type f -name '*.tm'); do
	if [ $tmfile -nt $(sed 's/\.tm/\.html/' <<< $tmfile) ]; then
		# remove biolinum-font package from .tm file, saving results in
		# temporary file
		sed 's/biolinum-font|//' $tmfile > $tmfile.tmp
		sed -i 's/biolinum-font>/>/' $tmfile.tmp
	fi
done

# pass all created temporary files to convert to texmacs
texmacs $(find . -type f -name '*.tm.tmp' |
	sed 's/\(.*\)\.tm.tmp/-c \1.tm.tmp \1.html/') -q

# remove created temporary files
find . -type f -name '*.tm.tmp' -exec rm {} \;
