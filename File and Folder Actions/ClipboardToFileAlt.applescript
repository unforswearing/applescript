-- like ClipboardToFile, but works as a Finder toolbar app
-- select a folder, run ClipboardToFileAlt.applescript and enter a file name and extension
-- the new file (created from your clipboard) will be added to the selected folder

tell application "Finder"
	set FoldName to selection as text
	set FoldName to POSIX path of FoldName
	set newfile to text returned of (display dialog "Enter file name and extension" default answer "")
	set FileName to FoldName & newfile
	set FileName to POSIX path of FileName
	set FileName to quoted form of FileName
	do shell script "pbpaste > " & FileName
	set doOpen to button returned of (display dialog "Open file now?" buttons {"Yes", "Not Now", "Cancel"} cancel button 3)
	if doOpen is "Yes" then
		do shell script "open " & FileName
	else
		error number -128
	end if
end tell