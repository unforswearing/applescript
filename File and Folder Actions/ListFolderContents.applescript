--- saves the contents of your selected folder to a text file with a name you specify
--- be sure to include the extension in the filename (although I guess you don't need to...)

set ffolder to choose folder
tell application "Finder"
	set fileNames to (get the name of every file of ffolder)
	set theItems to selection
	repeat with itemRef in theItems
		set end of fileNames to name of itemRef
	end repeat
	set fileNames to fileNames as Unicode text
	set fn to choose file name
	set fid to open for access fn with write permission
	write fileNames to fid
	close access fid
end tell
fileNames

unforswearing.com
--- http://www.github.com/unforswearing
--- notes@theforeverarrow.com
