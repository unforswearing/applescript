--- Find the lat and long of an address using the Location Helper application, and optionally copy the data to the clipboard or search with google
--- really sorry for the crappy variable names...

tell application "Finder"
	activate
	set locName to text returned of (display dialog "Search for the latitude and logitude of your location by entering the full address of the location below (include zip code and country)" default answer "" with icon note buttons {"OK"} default button {"OK"})
	tell application "Location Helper"
		set geoAddy to geocode address of locName
		set geoAddy to (geocode address of locName) as list
		set geoAddy1 to every item of geoAddy
		set geoAddy2 to item 1 of item 1 of geoAddy1
		set geoAddy3 to every item of geoAddy2
		set geoAddy4 to item 3 of geoAddy3
		set geoAddy5 to every item of geoAddy4 as list
		set LocLatLong to (get item 2 of geoAddy5) as list
	end tell
	set AppleScript's text item delimiters to space
	display dialog "The Lat/Long is " & LocLatLong with icon note buttons {"OK"} default button {"OK"}
	set LatLongChoice to button returned of (display dialog "Copy to Clipboard or Search with Google?" with icon note buttons {"Copy to Clipboard", "Search with Google", "Cancel"} default button {"Search with Google"})
	if LatLongChoice is "Copy to Clipboard" then
		set tid to AppleScript's text item delimiters
		set AppleScript's text item delimiters to space
		tell application "Finder" to set the clipboard to LocLatLong as text
		set AppleScript's text item delimiters to tid
	end if
	if LatLongChoice is "Search with Google" then
		set tid to AppleScript's text item delimiters
		set AppleScript's text item delimiters to space
		open location "http://www.google.com.au/search?q=" & LocLatLong
		set AppleScript's text item delimiters to tid
	end if
end tell

--- unforswearing.com
--- http://www.github.com/unforswearing
--- hello@unforswearing.com
