-- my alternative to "Finder to Shell" scripts, just for fun. 
-- select something in Finder and run the script, a new terminal window opens in the current Finder directory
-- add to the Finder toolbar for easiest use

tell application "Finder"
	set go2shell to selection as text
	set go2shell to quoted form of POSIX path of go2shell
	if go2shell contains "." then
		set rmfile to do shell script "basename " & go2shell
		set go2shell to do shell script "echo " & go2shell & " | sed -e 's/" & rmfile & "//g'"
		set go2shell to quoted form of go2shell
	end if
	tell application "Terminal"
		activate
		do script "cd " & go2shell
	end tell
end tell

