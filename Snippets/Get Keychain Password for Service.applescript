-- lightly modified version of script from https://apps.inspira.io/bluesense/en/applescript/

on getPassword(keychainItemName)
	local password
	set password to do shell script ("/usr/bin/security 2>&1 >/dev/null find-generic-password -gl " & quoted form of keychainItemName & " | cut -c 11-99 | sed 's/\"//g'")
	if password contains "could not be found in the keychain" or password as string is equal to "" then
		display alert "Password not found in the keychain" message "Certain tasks in this script need the administrator password to work.
You must create a new password in the OS X Keychain with a custom name, and set it with your administrator password, then edit this script." as critical
		error "Password could not be found in the keychain."
	else
		return password
	end if
end getPassword

set thisPw to text returned of (display dialog "Enter Service for password" default answer "")

set my_password to getPassword(thisPw)