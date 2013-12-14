--- move all downlaods to trash and enmpy (with prompt)
--- from http://community.spiceworks.com/scripts/show/236-applescript-to-delete-files-in-specified-folder-that-are-older-than-30-days

set modDate to (1)
tell application "System Events"
	set currentUser to (name of current user)
end tell

tell application "Finder"
	try
		delete (every item of folder "Downloads" of folder currentUser of folder "Users" of startup disk whose modification date is less than ((current date)) - modDate * days)
	end try
	
end tell

set theButton to button returned of (display dialog "Would you like to empty the trash?" with icon caution buttons {"Empty Trash", "Cancel"} default button "Cancel")

if theButton is "Empty Trash" then
	tell application "Finder"
		empty trash
	end tell
end if
