repeat
	set ffolder to "Users:alvincharity:Music"
	tell application "Finder"
		set x to ffolder as alias
		
		set y to (size of (info for x)) / 1024 as integer
		delay 5
		set z to (size of (info for x)) / 1024 as integer
		if y is equal to z then
			-- Add code here
			exit repeat
		else
			delay 10
		end if
	end tell
end repeat
