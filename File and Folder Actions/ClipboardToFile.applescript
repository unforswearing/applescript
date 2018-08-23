--- saves the text contents of the clipboard to a text file with a name you specify.
--- be sure to specify an extension (e.g. use HTML if you want to save the copied text as a webpage)

set d to the clipboard as «class utf8»
set fn to choose file name
set fid to open for access fn with write permission
write d to fid
close access fid
