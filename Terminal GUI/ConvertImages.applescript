--- converts images from/to common formats
--- select an image file in finder, choose the format you want to conver to 
--- the script uses the 'sips' command to create a new file of your chosen format in the same dir 
--- need a workaround for 4 letter extensions (e.g. tiff). note that this script can receive PDF as input. 

tell application "Finder"
	
	set pathFile to selection as alias
	set pathFile to quoted form of POSIX path of pathFile
	
	set fmt to choose from list {"bmp", "gif", "jpg", "png"} with prompt "Convert to:"
	
	set destFolder to do shell script "dirname " & pathFile
	set baseName to do shell script "basename " & pathFile
	set baseName to text 1 thru -5 of baseName
	
	
	set destFolder to destFolder & "/" & baseName & "." & fmt
	set destFolder to quoted form of destFolder
	
	do shell script "sips -s format png " & pathFile & " --out " & destFolder
	
end tell

--- http://www.scriptogr.am/unforswearing
--- http://www.github.com/unforswearing
--- notes@theforeverarrow.com
