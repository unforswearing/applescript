(*
Get your desired window and sidebar size by running:

tell application "Finder" to set bounds of window 1
tell application "Finder" to get sidebar width of Finder window 1

And then replace the numbers below with the results

Alternately, you can use the following:
tell application "Finder"
  set desiredWindowBounds to (get bounds of window 1)
  set desiredSidebarWidth to (get sidebar width of Finder window 1)
end tell
And then pass the variables to a seperate script or process that will resize the window as needed 
*)

tell application "Finder" to set bounds of window 1 to {60, 60, 1000, 720}
tell application "Finder" to set sidebar width of Finder window 1 to 150
