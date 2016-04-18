tell application "Finder"
	
	set pathFile to selection as alias
	set pathFile to quoted form of POSIX path of pathFile
	set destFolder to do shell script "dirname " & pathFile
	set baseName to do shell script "basename " & pathFile
	
end tell
