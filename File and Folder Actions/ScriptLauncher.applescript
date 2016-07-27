--- a "launcher" for applescripts
--- enter the name of the script you would like to run and click "OK" or press the enter button on your keyboard
--- case does not matter, but spaces/special characters do. be sure to enter the script name exactly as it was saved. 
--- this script will automatically add the ".scpt" extension to the name you enter.
--- default path is to a "scripts" folder located in Documents. Edit this line to relect the location of your scripts folder

set _Path to "/Users/YOURNAMEHERE/Documents/Scripts"
set scriptLaunch to text returned of (display dialog "Enter name of script to run" default answer "" buttons "OK" default button "OK")
if scriptLaunch contains "" then
	error number -128
else if scriptLaunch contains scriptLaunch then
	set scriptRun to _Path & "/" & scriptLaunch & ".scpt"
	run script scriptRun
end if
scriptRun

-- unforswearing.com
--- http://www.github.com/unforswearing
--- notes@theforeverarrow.com
