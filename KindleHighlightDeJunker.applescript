# Kindle Highlight De-Junker
# Copy your Kindle highlights to the clipboard and remove the extraneous crap by running this script 
# Save as a text file (or whatever) with the result

do shell script "pbpaste | sed 's/Read.*//g' | sed 's/Add.*//g' | pbcopy"
set hilite to the clipboard
set fn to choose file name
set fid to open for access fn with write permission
write hilite to fid
close access fid
set the clipboard to ""

# TO DO: update with even better formatting options

