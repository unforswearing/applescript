tell application "Finder"
	set fileNames to {}
	set theItems to selection
	repeat with itemRef in theItems
		set end of fileNames to name of itemRef
	end repeat
end tell
fileNames
