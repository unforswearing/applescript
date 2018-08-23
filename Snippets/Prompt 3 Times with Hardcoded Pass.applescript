set thisPw to "secret"

repeat 3 times
	set pw to text returned of (display dialog "Enter your password" default answer "" with icon stop buttons {"Cancel", "Continue"} default button "Continue" with hidden answer)
	if pw is thisPw then
		
		display dialog "Success!"
		exit repeat
		
		
	else
		display alert "Incorrect Password!"
		
	end if
end repeat

-- run script here