set {tids, AppleScript's text item delimiters} to {AppleScript's text item delimiters, "."}
set docDir to choose folder with prompt "Choose a folder with HTML files" default location (path to documents folder)
set txtDir to choose folder with prompt "Choose a folder to store the new RTF files" default location (path to desktop folder)

tell application "Finder"
	set docFiles to (every document file of folder docDir whose (name extension is in {"html"})) as alias list
	set txtDir to (POSIX path of txtDir)
	repeat with aDoc in docFiles
		set thisDoc to contents of aDoc
		set the item_path to the quoted form of the POSIX path of thisDoc
		set the item_name to (text item 1 of text items of (get name of thisDoc))
		set out_file to quoted form of (txtDir & item_name & ".rtf")
		try
			set res to do shell script "textutil -convert rtf -output " & out_file & " " & item_path
		on error e number n
			display dialog "An error occurred during conversion of : " & item_path & ": " & n & e
		end try
	end repeat
end tell

set AppleScript's text item delimiters to tids

