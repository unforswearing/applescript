tell application "System Events"
	set frontApplication to (get name of every process whose frontmost is true) as string
	try
		tell process frontApplication
			click button 2 of window 1
		end tell
	on error errMsg
		tell process frontApplication
			click button 1 of window 1
			print errMsg
		end tell
	end try
end tell
