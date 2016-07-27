--- copy text from the window of the current application
--- (example: an open email, text from a code editor, etc)
--- paste copied text as a new note in notational velocity
--- with a dialog box allowing you to choose a name for you new note

tell application "System Events"
	set w1 to the name of first application process whose frontmost is true
	tell w1
		tell application "System Events"
			key code 0 using command down
			key code 8 using command down
			set bodytext to the clipboard
			set the clipboard to bodytext as string
			tell application "nvALT"
				activate
				tell application "System Events"
					key code 9 using {command down, shift down}
				end tell
			end tell
		end tell
	end tell
end tell
tell application "nvALT"
	set newnote to display dialog "Create a NV note" default answer ""
	set newnote to text returned of newnote
	tell application "Finder" to set the clipboard to newnote as text
	tell application "nvALT"
		activate
		tell application "System Events"
			key code 15 using command down
			tell application "nvALT"
				activate
				tell application "System Events"
					key code 9 using command down
					key code 36
					key code 36
					key code 36
					key code 36
				end tell
			end tell
		end tell
	end tell
end tell

unforswearing.com
--- http://www.github.com/unforswearing
--- notes@theforeverarrow.com
