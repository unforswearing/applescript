--- this script depends on the application "Caffeine"
--- in 10.8 and up, you can substitute this application for the "caffeinate" terminal command
--- the script also uses the 12 hour clock
--- you must adjust the script to your screen
--- for other details, head on over to http://scriptogr.am/unforswearing/post/camtasia-autorecord-timer-script

set stanswer to text returned of (display dialog "What time do you want the recording to start?" default answer "")
set danswer to text returned of (display dialog "How many hours from now does the recording need to stop?" default answer "")
set documentName to text returned of (display dialog "What do you want to name this document?" default answer "")
delay 3
tell application "Finder"
	
	repeat
		set datte to current date
		set hower to get hours of datte
		set minits to get minutes of datte
		if (hower > 12) then
			set hower to (hower - 12)
		end if
		set tiime to hower & ":" & minits as string
		log tiime
		if contents of tiime is equal to stanswer then
			tell application "Caffeine"
				turn on
				tell application "Camtasia 2"
					activate
					delay 2
					startRecording region {0, 0, 1920, 1200}
				end tell
				set tymer to 60
				set hhour to tymer * tymer
				delay hhour * danswer
			end tell
			exit repeat
		end if
	end repeat
end tell

tell application "Caffeine"
	turn off
	tell application "Camtasia 2"
		stopRecording
		tell application "Finder"
			delay 0.5
			
			set theDocumentPath to (path to desktop as text) & (documentName as text) & ".cmproj" as text
			if item (theDocumentPath) exists then
				display alert "Document already exists!"
			else
				try
					tell application "Camtasia 2" to save document 1 in theDocumentPath
				on error
					display alert "Cannot save " & theDocumentPath as text
					
				end try
			end if
		end tell
	end tell
end tell

--- http://www.scriptogr.am/unforswearing
--- http://www.github.com/unforswearing
--- notes@theforeverarrow.com
