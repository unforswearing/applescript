# an applescript wrapper for firing quick emails
tell application "Mail"
  activate
  delay 2
	set msgbody to # the content of the email
	set theSubject to "This is an email" -- the subject
	set theContent to msgbody
	set theAddress to "someone.else@theiraddress.com" 
	set msg to make new outgoing message with properties {subject:theSubject, content:theContent, visible:true}
	tell msg to make new to recipient at end of every to recipient with properties {address:theAddress}
	send msg
end tell
