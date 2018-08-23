set dayss to text returned of (display dialog "How many days from now?" default answer "" buttons {"OK"} default button "OK")
set morrow to current date
set morrow to morrow + dayss * days
set the clipboard to (do shell script "echo " & morrow & " | sed s/,[^,]*$//")

