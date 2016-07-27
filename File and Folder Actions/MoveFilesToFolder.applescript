--- I use this as an automator service to quickly clean up my desktop
--- select files you need to move, run the service, choose the destination. thats it. 


tell application "Finder"
	set mvfiles to selection
	set destFolderPath to choose folder
	set destFolder to name of destFolderPath
	set destFolder to destFolderPath as string
	move mvfiles to destFolder
end tell


-- unforswearing.com
--- http://www.github.com/unforswearing
--- notes@theforeverarrow.com
