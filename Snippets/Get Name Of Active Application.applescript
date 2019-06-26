# this script will return the name of the active (frontmost) application

tell application "System Events" 
  get name of application processes whose frontmost is true
end tell