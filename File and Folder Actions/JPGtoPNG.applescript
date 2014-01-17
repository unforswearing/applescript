--- converts jpg images to png
--- untested with other image formats
--- general use: select a jpg file in finder, run the script, the script makes a copy of the file as png, saves to same dir as orignal file. 
--- my use: saved as an application and added to the finder toolbar

	set pathFile to selection as alias
	set pathFile to quoted form of POSIX path of pathFile
	
	set destFolder to do shell script "dirname " & pathFile
	set baseName to do shell script "basename " & pathFile
	set baseName to text 1 thru -5 of baseName
	
	
	set destFolder to destFolder & "/" & baseName & ".png"
	set destFolder to quoted form of destFolder
	
	do shell script "sips -s format png " & pathFile & " --out " & destFolder
	
	
--- http://www.scriptogr.am/unforswearing
--- http://www.github.com/unforswearing
--- notes@theforeverarrow.com
