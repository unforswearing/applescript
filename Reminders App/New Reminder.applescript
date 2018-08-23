# Lightly modified version of https://gist.github.com/n8henrie/c3a5bf270b8200e33591

# the following two variables can be changed to the text returned from "display dialog..."
set theLines to {"task name 1", "task name 2"}
set theDueDateTime to "Thursday, March 22, 2018 at 3:00:00 PM"

repeat with eachLine in theLines
	tell application "Reminders"
		set mylist to list "Work"
		tell mylist
			make new reminder at end with properties {name:eachLine, due date:date theDueDateTime}
		end tell
	end tell
end repeat