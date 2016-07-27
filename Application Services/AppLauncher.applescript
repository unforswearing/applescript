(*
## Instructions:

Open Applications
1. Enter the name of the application you would like to launch.
2. Press "Go" or the enter button on your keyboard
3. Be amazed as your application probably launches

Close Applications
1. Enter "kill" and then the name of the application you would like to close.
    - For example: "kill iTunes"
2. Press "Go" or the enter button on your keyboard
3. Be relieved as your application closes

If you opened the script by accident, you can close it by simply pressing the enter button on your keyboard. 
*)


set applaunch to text returned of (display dialog "" default answer "" buttons {"Go"} default button "Go")
if applaunch contains "kill" then
	set originString to applaunch
	set {TID, text item delimiters} to {text item delimiters, {"kill "}}
	set resultString to text item 2 of originString
	set text item delimiters to TID
	set killapp to resultString
	tell application killapp
		quit
	end tell
else if applaunch contains "" then
	error number -128
else if applaunch contains applaunch then
	tell application applaunch
		activate
	end tell
end if
end


--- I have seen so many variations of application launchers that I wanted to try to make one myself
--- As you can tell, it is super super basic, with no functionality beyond launching and quitting apps
--- This script should be bound to a key combo for max usefulness 
---      i use Control + Space because it is similar to Alfred and Spolight key combos
 
--- unforswearing.com
--- http://www.github.com/unforswearing
--- hello@unforswearing.com
