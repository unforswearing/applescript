tell application "Finder"
	set theFileFull to selection as text
	set theFileFull to quoted form of POSIX path of theFileFull
	
	
	set renameFile to do shell script "echo '" & theFileFull & "' | sed -e 's/ /_/g'"
	
	do shell script "mv " & theFileFull & " " & renameFile
	
	
	
end tell
