--- there are tons of these scripts floating around, but none seemed to work for me (and seemed needlessly complicated). 
--- get the URL of the active Chrome tab and send it to Safari 
--- optionally, return back to Chrome (just delete the comment markup before the last set of "tell" tags

tell application "Google Chrome"
	set _ChURL to URL of active tab of first window
end tell
tell application "Safari"
	activate
	open location _ChURL
end tell
tell application "Google Chrome"
	activate
end tell
end

