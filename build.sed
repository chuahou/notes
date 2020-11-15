# sed script to perform various transformations on built HTML files

# add responsiveness option
s@</title>@</title>\n<meta name="viewport" content="width=device-width, initial-scale=1">\n@

# change URL of top page
s@~/dev/notes/index.html@/notes/index.html@
