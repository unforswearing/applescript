# Display the current time in Notification Center

set ttime to time string of (current date)
set ttime to do shell script "echo " & ttime & " | sed s/:..//2"
display notification ttime with title "The time is now"
