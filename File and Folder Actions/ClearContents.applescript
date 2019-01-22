--- I bound this script to a key combo
--- As I select folders to empty (without removing the folder itself) I can do so without moving my hands from the keyboard
--- useful for shared dropbox folders that are regularly updated with new files


tell application "Finder"
		set delFolder to selection as text
		set theseFiles to every item of (entire contents of folder delFolder) whose kind is not "Folder"
		move theseFiles to trash
end tell




--- http://www.github.com/unforswearing

