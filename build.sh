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
	fi
done

# pass all created temporary files to convert to texmacs
texmacs $(find . -type f -name '*.tm.tmp' |
	sed 's/\(.*\)\.tm.tmp/-c \1.tm.tmp \1.html/') -q

# modify HTML files
for tmfile in $(find . -type f -name '*.tm.tmp'); do
	htmlfile=$(sed 's/\.tm\.tmp/\.html/' <<< $tmfile)
	# add responsiveness
	sed -i 's/<\/title>/<\/title>\n<meta name="viewport" content="width=device-width, initial-scale=1">\n/' $htmlfile

	# add to top links
	sed -i 's/\(<h[1-6][^>]*>.*\)\(<\/h[1-6]>\)/\1<a class="toplink" href="#">TO TOP<\/a>\2/' $htmlfile
done

# remove created temporary files
find . -type f -name '*.tm.tmp' -exec rm {} \;
