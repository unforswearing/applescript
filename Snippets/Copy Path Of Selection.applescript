tell application "Finder"
	set pathFile to selection as text
	set pathFile to get POSIX path of pathFile
	set the clipboard to pathFile
end tell

