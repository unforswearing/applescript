--- Like app launcher, but just kills apps
--- bind to a key combo for max efficiency 
--- enter app name and press the enter button on your keyboard or press the Go button
--- hit the enter button if you don't want to kill anything


set applaunch to text returned of (display dialog "" default answer "" buttons {"Go"} default button "Go")
if applaunch contains "" then
	error number -128
else if applaunch contains applaunch then
	tell application applaunch
		quit
	end tell
end if
end


--- http://www.scriptogr.am/unforswearing
--- http://www.github.com/unforswearing
--- notes@theforeverarrow.com
