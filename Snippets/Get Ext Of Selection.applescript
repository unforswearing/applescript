tell application "Finder"
	set pathFile to selection as text
	set pathFile to quoted form of POSIX path of pathFile
	set destFolder to do shell script "dirname " & pathFile
	set baseName to do shell script "basename " & pathFile
	set ext to text -4 thru end of baseName
	set baseName to text 1 thru -5 of baseName
	ext
end tell
