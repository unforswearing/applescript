# An AppleScript wrapper for posting youtube videos via 'google-cl' (https://code.google.com/p/googlecl/)


tell application "Finder"
	set isvideo to selection as alias
	set isvideoext to name extension of isvideo as text
	set movtype to {"mov", "mp4", "avi", "mpeg", "flv", "swf"}
	if movtype contains isvideoext then
		set youtube to quoted form of POSIX path of isvideo
	else if movtype does not contain isvideoext then
		set youtube to choose file
		set youtube to quoted form of POSIX path of youtube
	end if
	set namee to do shell script "basename " & youtube & " | sed 's/\\..*//'"
	set namee to quoted form of namee
	tell application "Terminal"
		activate
		delay 2
		do script "google youtube post " & youtube & " --title=" & namee & " --category=Education" # or whatever category 
		repeat
			delay 2
			set bussy to busy of window 1
			if bussy is true then
				delay 5
			else if bussy is false then
				exit repeat
				tell application "Terminal" to quit
			end if
		end repeat
	end tell
	open location "https://www.youtube.com/my_videos"
end tell

