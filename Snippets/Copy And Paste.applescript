## Copy
tell application "nvALT"
	activate
	tell application "System Events"
		key code 7 using command down
		
		
		## Paste	
		tell application "System Events"
			key code 9 using command down
			key code 51
		end tell
	end tell
end tell



