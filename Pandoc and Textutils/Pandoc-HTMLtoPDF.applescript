set source_file to choose file with prompt "Where is the HTML or HTM file?" of type {"htm", "html"}
set path_file to POSIX path of source_file

set dest_file to choose folder with prompt "Where to save the PDF file?"
set dest_file to POSIX path of dest_file

tell application "Finder" to set {dispName, nameExt, isHidden} to the {displayed name, name extension, extension hidden} of source_file
if isHidden or nameExt is equal to "" then
	dispName
else
	(characters 1 through (-2 - (count of nameExt)) of dispName) as text
end if
set baseName to result

do shell script "/usr/local/bin/pandoc -f html " & path_file & " -t pdf -o " & dest_file & baseName & ".pdf"

