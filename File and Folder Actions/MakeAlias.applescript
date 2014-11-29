# select a file in finder
# run this script
# watch the alias appear as if magic

tell application "Finder"
	set scel to selection as text
	set scel to POSIX path of scel
	set als to " alias"
	set lnscel to scel & als
	set scel to quoted form of scel
	set lnscel to quoted form of lnscel
	do shell script "ln -s " & scel & " " & lnscel
end tell
