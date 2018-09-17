--- converts jpg images to png
--- the script removes 3 letter file extensions, so it should work with any image files fitting that criteria (tested with bmp and jpg).
--- general use: select a jpg file in finder, run the script, the script makes a copy of the file as png, saves to same dir as orignal file. 
--- my use: saved as an application and added to the finder toolbar (it doesn't want to work as a service, for some reason)

	set pathFile to selection as alias
	set pathFile to quoted form of POSIX path of pathFile
	
	set destFolder to do shell script "dirname " & pathFile
	set baseName to do shell script "basename " & pathFile
	set baseName to text 1 thru -5 of baseName
	
	
	set destFile to destFolder & "/" & baseName & ".png"
	set destFile to quoted form of destFolder
	
	do shell script "sips -s format png " & pathFile & " --out " & destFile
	
	
--- see also: Terminal GUI - https://github.com/unforswearing/applescript/tree/master/Terminal%20GUI
	
--- unforswearing.com
--- http://www.github.com/unforswearing
--- hello@unforswearing.com
