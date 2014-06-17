# Show and Hide hidden files and folders, Show and Hide files and folders on the desktop
# Hide hidden files and folders: hf
# Show hidden files and folders: sf
# Hide desktop files and folders: hd
# Show desktop files and folders: sd

set q to text returned of (display dialog "Hide Files (type 'hf'), Hide Desktop Folders (type 'hd'), Show Files (type 'sf'), Show Desktop Folders (type 'sd')" default answer "")
if q contains "hf" then
	do shell script "defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app"
else if q contains "hd" then
	do shell script "defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
else if q contains "sf" then
	do shell script "defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app"
else if q contains "sd" then
	do shell script "defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
end if
