--- this script combines the "show in finder" and "edit with" commands in Notational Velocity
--- select a note in NV, run the script and it will open in TaskPaper
--- the TaskPaper application can be substituted with your default text editor/to do list manager

tell application "Finder"
	close every window
	tell application "Notational Velocity"
		activate
		tell application "System Events"
			key code 15 using shift down & command down
			tell application "Finder"
				delay 0.25
				set TaskP to selection as text
				set TaskP to quoted form of POSIX path of TaskP
				tell application "TaskPaper"
					activate
					do shell script "open -a 'TaskPaper' " & TaskP
				end tell
			end tell
		end tell
	end tell
end tell

--- unforswearing.com
--- http://www.github.com/unforswearing
--- hello@unforswearing.com
