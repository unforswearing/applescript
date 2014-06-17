# Easily change the "require password on wake" settings

set pWord to button returned of (display dialog "Password On or Off" buttons {"ON", "OFF"} default button "ON")
if pWord is "OFF" then
	tell application "System Events" to set require password to wake of security preferences to false
else if pWord is "ON" then
	tell application "System Events" to set require password to wake of security preferences to true
end if
