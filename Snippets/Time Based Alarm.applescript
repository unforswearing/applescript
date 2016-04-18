set larmtime to display dialog "what time do you want to be alerted?" default answer ""
set larmtime to text returned of larmtime
repeat
	set datte to current date
	set hower to get hours of datte
	set minits to get minutes of datte
	if (hower > 12) then
		set hower to (hower - 12)
		set tiime to hower & minits
		set wun to item 1 of tiime
		set twoo to item 2 of tiime
		set tiime to wun & ":" & twoo as string
		
		log tiime
		if contents of tiime is equal to larmtime then
			display dialog "maybe?"
			-- do something 
			exit repeat
		end if
	end if
end repeat
end

