# requires Twitter Scripter (http://www.mousedown.net/mouseware/TwitterScripter.html)

set tweeting to text returned of (display dialog "Tweet" default answer "" buttons {"Cancel", "Tweet"} default button "Tweet")
if (count of tweeting) is greater than 135 then 

# crappy error checking for tweets that are too long
	repeat while (count of tweeting) is greater than 135
		set tweeting to text returned of (display dialog "Tweet" default answer "" buttons {"Cancel", "Tweet"} default button "Tweet")
	end repeat
end if

# if you have a link on your clipboard, it will be attached
if (the clipboard) contains "http" then
	set tweeting to tweeting & " " & (the clipboard)
else
	set tweeting to tweeting
end if

# verify that the script worked/your tweet looks ok
set th_button to button returned of (display alert "now tweeting '" & tweeting & "'. Ok?" buttons {"Cancel", "Ok"} default button "Ok")
if th_button is "Ok" then

# send the tweet into the internet
	tell application "Twitter Scripter"
		tweet tweeting using account "YOUR ACCOUNT"
	end tell

end if
