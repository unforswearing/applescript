tell application "Finder"
	
	set copyfile to selection
	set copyfile to copyfile as text
	set copyfile to quoted form of POSIX path of copyfile
	
	set the clipboard to copyfile
	
	set pastedest to (choose folder)
	set pastedest to pastedest as text
	set pastedest to quoted form of POSIX path of pastedest
	
	try
		do shell script "cp " & copyfile & " " & pastedest
	on error
		do shell script "cp " & copyfile & " " & pastedest with administrator privileges
	end try
	
end tell

