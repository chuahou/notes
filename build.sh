#!/usr/bin/env bash
# SPDX-License-Identifier: MIT
# Copyright (c) 2020 Chua Hou

# find all .tm files newer than their .html counterparts
for tmfile in $(find . -type f -name '*.tm'); do
	if [ $tmfile -nt $(sed 's/\.tm/\.html/' <<< $tmfile) ]; then
		# remove biolinum-font package from .tm file, saving results in
		# temporary file
		sed 's/biolinum-font|//' $tmfile > $tmfile.tmp
		sed -i 's/biolinum-font>/>/' $tmfile.tmp

		echo "Building $tmfile..."
	fi
done

# pass all created temporary files to convert to texmacs
texmacs $(find . -type f -name '*.tm.tmp' |
	sed 's/\(.*\)\.tm.tmp/-c \1.tm.tmp \1.html/') -q

# modify HTML files
for tmfile in $(find . -type f -name '*.tm.tmp'); do
	HTMLFILE=$(sed 's/\.tm\.tmp/\.html/' <<< $tmfile)

	# add responsiveness
	sed -i 's@</title>@</title>\n<meta name="viewport" content="width=device-width, initial-scale=1">\n@' $HTMLFILE

	# change URL of top page
	sed -i 's@~/dev/notes/index.html@/notes/index.html@' $HTMLFILE

	# remove TOC
	perl -i -p0e 's/<h2>Table of contents.*?<\/div>//sm' $HTMLFILE

	# strip trailing whitespace
	sed -i 's/\s\+$//' $HTMLFILE
done

# remove created temporary files
find . -type f -name '*.tm.tmp' -exec rm {} \;
