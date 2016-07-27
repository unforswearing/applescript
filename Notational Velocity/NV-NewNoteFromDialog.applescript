--- create a new note without NV being open
--- a dialog box allows you to select a name


set newnote to display dialog "Create a NV note" default answer ""
set newnote to text returned of newnote
tell application "Finder" to set the clipboard to newnote as text
tell application "nvALT"
	activate
	tell application "System Events"
		key code 9 using {command down, shift down}
		key code 124 using command down
		key code 36
		key code 36
	end tell
end tell


unforswearing.com
--- http://www.github.com/unforswearing
--- notes@theforeverarrow.com
