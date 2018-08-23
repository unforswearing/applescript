--- uses the Location Helper application to search for a city by zipcode

tell application "Finder"
	activate
	set futureLocation to text returned of (display dialog "Search for your location by entering a Zip or Post Code below" default answer "" with icon note buttons {"OK"} default button {"OK"})
	tell application "Location Helper"
		set ddcd to geocode address futureLocation
		set ddcd to (geocode address futureLocation) as list
		get item 1 of item 1 of ddcd
		set vvv to item 1 of item 1 of ddcd
		-- get formatted_address of vvv
		set futureLocation to formatted_address of vvv
	end tell
	display dialog "Search Results: " & futureLocation with icon note buttons {"OK"} default button {"OK"}
end tell

