--- open a file when you regain an internet connection on your computer
--- the script will stay open and ping google until a connection has been established


set _choisir to button returned of (display dialog "Choose a file to open when you regain an internet connection" with icon note buttons {"OK", "Nevermind"} default button "OK" giving up after 10)
if _choisir is "OK" then
	set new_file to choose file with prompt "Choose file or application to open"
end if
display dialog "The script will remain active until you regain an internet connection"
repeat
	try
		do shell script "ping -c 5 www.google.com"
		exit repeat
	on error
		delay 2
	end try
end repeat

tell application "Finder" to open new_file

unforswearing.com
--- http://www.github.com/unforswearing
--- notes@theforeverarrow.com
