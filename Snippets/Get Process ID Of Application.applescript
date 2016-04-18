set applaunch to text returned of (display dialog "" default answer "" buttons {"Go"} default button "Go")
tell application "System Events"
	set {procesList, pidList} to the {name, unix id} of (every process whose name contains applaunch)
	if procesList contains applaunch then
		set pidList to pidList as text
		set pidList to characters 1 thru 5 of pidList
		set pidList to pidList as string
		display dialog pidList
	end if
end tell
