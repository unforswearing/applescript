set morrow to current date
set morrow to morrow + days
set the clipboard to (do shell script "echo " & morrow & " | sed s/,[^,]*$//")

