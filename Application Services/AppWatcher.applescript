--- Choose an application to watch
--- Choose an application to open when this application is activated
--- Can also be used for watching/launching documents/files/scripts (ostensibly. hasn't been tested)
--- NOTE: sometimes does not work with applications that have multiple names

tell application "Finder"
	
	
	set wapp_name to choose file with prompt "What application should I watch?" default location "/Applications"
	tell application "Finder" to set {dispName, nameExt, isHidden} to the {displayed name, name extension, extension hidden} of wapp_name
	if isHidden or nameExt is equal to "" then
		dispName
	else
		(characters 1 through (-2 - (count of nameExt)) of dispName) as text
	end if
	set baseName to result
	set fwapp_name to baseName
	
	delay 0.4
	
	set oapp_name to choose file with prompt "What application should open when " & fwapp_name & " is activated?"
	set poapp_name to POSIX path of oapp_name
	tell application "Finder" to set {odispName, onameExt, oisHidden} to the {displayed name, name extension, extension hidden} of oapp_name
	if oisHidden or onameExt is equal to "" then
		odispName
	else
		(characters 1 through (-2 - (count of onameExt)) of odispName) as text
	end if
	set obaseName to result
	set foapp_name to obaseName
	
	repeat
		tell application "System Events"
			set process_list to the name of every process whose visible is true
			if process_list contains fwapp_name then
				open oapp_name
				exit repeat
			else
				delay 10
			end if
		end tell
	end repeat
end tell
 

--- http://www.github.com/unforswearing

