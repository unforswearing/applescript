tell application "System Preferences" to activate
tell application "System Events"
	get properties
	tell process "System Preferences"
		click menu item "Sound" of menu "View" of menu bar 1
		delay 2
		set theRows to every row of table 1 of scroll area 1 of ¬
			tab group 1 of window "sound"
		set theOutputs to {} as list
		repeat with aRow in theRows
			if (value of text field 1 of aRow as text) ¬
				is equal to "Headphones" then
				set selected of aRow to true
				exit repeat
			end if
		end repeat
	end tell
end tell
tell application "System Preferences" to quit
