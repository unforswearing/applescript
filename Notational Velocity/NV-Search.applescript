--- Use a dialog box to search NV


set ssearch to display dialog "Search Notational Velocity" default answer ""
set ssearch to text returned of ssearch
tell application "nvALT"
	search ssearch
end tell
tell application "nvALT"
	activate
end tell


--- http://www.scriptogr.am/unforswearing
--- http://www.github.com/unforswearing
--- notes@theforeverarrow.com
