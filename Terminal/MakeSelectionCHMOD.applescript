# select a shell script in Finder and make it executable. 
# bind it to a key combo or run it with Alfred

tell application "Finder"
	set chmodFile to selection as text
	set chmodFile to quoted form of POSIX path of chmodFile
	do shell script "chmod +x " & chmodFile
end tell

