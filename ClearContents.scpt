--- I use this as an automator service (in Finder) to send the contents of a selected folder to the trash. Helpful when clearing out my dropbox folder. 

tell application "Finder"
		set delFolder to selection as text
		set theseFiles to every item of (entire contents of folder delFolder) whose kind is not "Folder"
		move theseFiles to trash
end tell

--- http://www.scriptogr.am/unforswearing
--- http://www.github.com/unforswearing
--- notes@theforeverarrow.com
