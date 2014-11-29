# use with a key binding and toggle the visibility of your dock at will

tell application "System Events"
	tell dock preferences
		if autohide is false then
			set autohide to true
		else if autohide is true then
			set autohide to false
		end if
	end tell
end tell
