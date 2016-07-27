--- use location helper to determine whether your computer needs to be woken with a password
--- example: I don't need a password at home, but I would like one when I am at work or a coffee shop. 
--- use "Get Yr Lat Long" to determine the coordinates of your home location and enter it into the "set home to" line
--- save script as a stay open application. the idle handler will check your location. 
--- additionally I have placed this script in my Login Items so that it runs when I restart my computer. 

on idle
	tell application "Location Helper"
		set location to get location coordinates
		set location to location as text
		set home to "YOUR LOCATION" 
		        -- Use the "Get Yr Lat Long" script to find your coordinates
		        -- Replace "YOUR LOCATION" with these coords.  
		        -- You should only need the first four digits (e.g. "12.34") 
		        -- Use additional digits from the coords (e.g. "12.3456") if work/coffee shop is very close to home. 
		if location does not contain home then
			tell application "System Events" to set require password to wake of security preferences to true
		else if location contains home then
			tell application "System Events" to set require password to wake of security preferences to false
		end if
	end tell
end idle

--- http://www.scriptogr.am/unforswearing
--- http://www.github.com/unforswearing
--- notes@theforeverarrow.com
