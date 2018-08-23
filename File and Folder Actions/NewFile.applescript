-- Create a blank new file with a file name and extension you specify
-- to be used as a Finder tool bar app

-- select a folder, run ClipboardToFileAlt.applescript and enter a file name and extension
-- the new file (created from your clipboard) will be added to the selected folder

tell application "Finder"
	set FoldName to selection as text
	set FoldName to POSIX path of FoldName
	set newfile to text returned of (display dialog "Enter file name and extension" default answer "")
	set FileName to FoldName & newfile
	set FileName to POSIX path of FileName
	set FileName to quoted form of FileName
	do shell script "touch " & FileName
	do shell script "open " & FileName
end tell