tell application "Finder"
	set mvfiles to selection
	set destFolderPath to choose folder
	set destFolder to name of destFolderPath
	set destFolder to destFolderPath as string
	move mvfiles to destFolder
end tell
