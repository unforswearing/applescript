--- I like to be reminded to restart when my computer has been running for six or more days

set upttime to (do shell script "uptime")
if upttime contains "6 days" then
	display alert "Restart Your Computer"
end if
