--- if, for some reason, you wanted to wanted to have a simple GUI for the built in screen capture tool
--- helpful for old people, children, or the chronically lazy

display dialog "This script uses your computers built-in screencapture tool. This script saves the file to your desktop by default."

set theButton to display dialog "Would you like to have an image of your entire screen, a specific window, or an area that you define?" buttons {"Entire Screen", "Specific Window", "Defined Area"}

set theChoice to get button returned of theButton

if theChoice contains "Entire Screen" then
set yesname to (display dialog "Choose the name for your file (with no spaces)" default answer "")
    set newIMGname to get text returned of yesname
    do shell script "screencapture ~/Desktop/" & newIMGname & ".png"
end if


if theChoice contains "Specific Window" then
    set yesname to (display dialog "Choose the name for your file (with no spaces)" default answer "")
    set newIMGname to get text returned of yesname
    display alert "Use the mouse to move the camera icon to the window you would like to capture, and click to create the screenshot"
    do shell script "screencapture -iW ~/Desktop/" & newIMGname & ".png"
end if


if theChoice contains "Defined Area" then
    set yesname to (display dialog "Choose the name for your file (with no spaces)" default answer "")
    set newIMGname to get text returned of yesname
    display alert "Use your mouse to move the crosshairs, and click to highlight the area of the sreen you would like to capture"
    do shell script "screencapture -s ~/Desktop/" & newIMGname & ".png"
end if

--- http://www.scriptogr.am/unforswearing
--- http://www.github.com/unforswearing
--- notes@theforeverarrow.com
