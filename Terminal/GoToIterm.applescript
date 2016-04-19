tell application "Finder"
	set pathFile to selection as text
	set pathFile to get POSIX path of pathFile
	set pathFile to quoted form of pathFile
	set the clipboard to pathFile
end tell

set isDir to (do shell script "test -d " & pathFile & " && echo true || echo false")

tell application "iTerm"
	activate
	set nWin to (current window)
	tell current session of first window
		if isDir contains "true" then
			write text "cd " & pathFile
		else if isDir contains "false" then
			write text "cd $(dirname " & pathFile & ")"
		end if
	end tell
end tell
