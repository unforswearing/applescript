tell application "System Preferences"
	activate
	reveal anchor "displaysDisplayTab" of pane id "com.apple.preference.displays"
	--	tell application "System Events" to tell process "iTerm2" to set visible to false
	
	tell application "System Events"
		tell process "System Preferences" to set visible to false
		delay 1
		set value of slider 1 of group 1 of tab group 1 of window 1 of process "System Preferences" to 0.5
		delay 0.5
		set value of slider 1 of group 1 of tab group 1 of window 1 of process "System Preferences" to 1
		delay 0.5
		set value of slider 1 of group 1 of tab group 1 of window 1 of process "System Preferences" to 0.5
		delay 0.5
		set value of slider 1 of group 1 of tab group 1 of window 1 of process "System Preferences" to 1
	end tell
	quit
end tell
