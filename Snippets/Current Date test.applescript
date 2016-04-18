set crrtdate to current date
set crrtdate to (current date) as Unicode text
if crrtdate contains "8:27" then
	tell application "Google Chrome"
		activate
	end tell
else
	repeat until crrtdate contains "8:27"
	end repeat
end if
