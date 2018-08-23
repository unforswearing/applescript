tell application "Finder"
	
	set pathFile to selection as alias
	set pathFile to quoted form of POSIX path of pathFile
	set destFolder to do shell script "dirname " & pathFile
	set destFolder to destFolder & "/"
	
end tell
