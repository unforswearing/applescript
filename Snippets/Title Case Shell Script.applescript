set testt to "test test"
tell application "Terminal"
	do script "echo " & testt & " | tr " & quote & "[:upper:]" & quote & " " & quote & "[:lower:]" & quote & " | perl -ane ' foreach $wrd ( @F ) { print ucfirst($wrd)." & quote & " " & quote & "; } print " & quote & "
" & quote & " ; '"
end tell
