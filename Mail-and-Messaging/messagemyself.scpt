set mssg to # whatever message you want to send yourself 

tell application "Messages"
	activate
	delay 3
	set myid to get id of second service
	set thebuddy to buddy "YOUR-PHONE-NUMBER" of service id myid
	send mssg to thebuddy
	
end tell
