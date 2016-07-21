tell application "System Events"
	set q to text returned of (display dialog "" default answer "")
	if q is "start" then
		do shell script "top -l 1|grep -i \"chrome\"|awk '{print $1}' >> /Users/Alvin/.psus/chrome.txt"
		do shell script "top -l 1|grep -i \"chrome\"|awk '{print $1}'|while read line; do kill -STOP $line; done"
		
	else if q is "cont" then
		do shell script "while read line; do kill -CONT \"$line\"; done < /Users/Alvin/.psus/chrome.txt"
		do shell script "mkfile -n 0b /Users/Alvin/.psus/chrome.txt"
	end if
end tell
