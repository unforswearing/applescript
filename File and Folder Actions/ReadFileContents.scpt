set ffile to (choose file with prompt "Get contents from…" of type {"txt", "md", "markdown", "rtf"})
set ffcont to read ffile
set ffcont to ffcont as Unicode text
set the clipboard to ffcont
do shell script "pbpaste | textutil -convert txt -stdin -stdout -encoding 30 | pbcopy"
