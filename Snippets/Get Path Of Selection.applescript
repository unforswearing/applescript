tell application "Finder"
	set pathFile to selection as text
	set pathFile to quoted form of POSIX path of pathFile
end tell
