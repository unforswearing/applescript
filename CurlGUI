--- Simple GUI for the curl command
--- Saves output to a text file with a name of your choosing

set website to text returned of (display dialog "Copy code from where?" default answer "http://")
set curl to do shell script "curl " & website & ""
set curl to curl as text
set the clipboard to curl
set d to the clipboard as «class utf8»
set fn to choose file name
set fid to open for access fn with write permission
write d to fid
close access fid



--- http://www.scriptogr.am/unforswearing
--- http://www.github.com/unforswearing
--- notes@theforeverarrow.com
