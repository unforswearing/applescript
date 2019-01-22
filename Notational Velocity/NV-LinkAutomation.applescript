-- Highlight text, run the script to copy and process the text, text is then pasted back into NV with link brackets.


tell application "Notational Velocity"
	activate
	tell application "System Events"
		key code 7 using command down
		do shell script "pbpaste | sed -e 's/^/[[/' | sed -e 's/$/]]/' | pbcopy"
		tell application "Notational Velocity"
			activate
			tell application "System Events"
				key code 9 using command down
				key code 51
			end tell
		end tell
	end tell
end tell


--- http://www.github.com/unforswearing

