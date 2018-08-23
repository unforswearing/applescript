repeat
	tell application "Terminal"
		set bizzy to busy of window 1
		if bizzy is true then
			delay 120
		else if bizzy is false then
			tell application "Terminal"
				quit
			end tell
			exit repeat
		end if
	end tell
end repeat
