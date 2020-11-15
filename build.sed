# sed script to perform various transformations on built HTML files

# add responsiveness option
s@</title>@</title>\n<meta name="viewport" content="width=device-width, initial-scale=1">\n@
s@\(<h[1-6][^>]*>.*\)\(</h[1-6]>\)@\1<a class="toplink" href="#">TO TOP</a>\2@
