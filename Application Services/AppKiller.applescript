(* 
	Like app launcher, but just kills apps. Bind this script to a to a key combo for max efficiency. Enter the name of the app you would like to kill and press enter or "Go"
	This may not work with applications that have many similarly named processes running (like "Google Chrome Helper" or "Google Chrome Renderer").
*)

activate
set applaunch to text returned of (display dialog "" default answer "" buttons {"Go"} default button "Go")
if applaunch contains "" then
	error number -128
else if applaunch contains applaunch then
	try
		tell application applaunch
			quit
		end tell
	on error
		tell application "System Events"
			set {procesList, pidList} to the {name, unix id} of (every process whose name contains applaunch)
			if procesList contains applaunch then
				do shell script "kill -KILL " & pidList
			end if
		end tell
	end try
end if
