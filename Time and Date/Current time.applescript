
(*
set crrtdate to current date
set crrtdate to (current date) as Unicode text
set dateword to every word of crrtdate*)

(*
set datte to do shell script "date"
datte *)

set datte to current date
set hower to get hours of datte
set minits to get minutes of datte
set tiime to hower & minits
set wun to item 1 of tiime
set twoo to item 2 of tiime
set tiime to wun & ":" & twoo as string
if tiime contains "11:31" then
	display alert "hey"
end if

(*
set larmtime to display dialog "what time do you want to be alerted?" default answer ""
set larmtime to text returned of larmtime
repeat
	set datte to current date
	set hower to get hours of datte
	set minits to get minutes of datte
	set tiime to hower & minits
	set wun to item 1 of tiime
	set twoo to item 2 of tiime
	set tiime to wun & ":" & twoo as string
	if tiime contains larmtime then
		display alert "hey"
	else
		delay 5
	end if
end repeat
*)

(*
set larmtime to display dialog "what time do you want to be alerted?" default answer ""
set larmtime to text returned of larmtime
set datte to current date
set hower to get hours of datte
set minits to get minutes of datte
if (hower > 12) then
	set hower to (hower - 12)
	set tiime to hower & minits
	set wun to item 1 of tiime
	set twoo to item 2 of tiime
	set tiime to wun & ":" & twoo as string
	repeat
		if tiime contains larmtime then
			display dialog tiime & larmtime
			exit repeat
		else
			delay 5
		end if
	end repeat
end if
*)

(* Friday, September 6, 2013

set stanswer to text returned of (display dialog "What time do you want the recording to start?" default answer "")
set datte to current date
set hower to get hours of datte
set minits to get minutes of datte
if (hower > 12) then
	set hower to (hower - 12)
end if
set tiime to hower & ":" & minits as string
log tiime

if contents of tiime is equal to stanswer then
	beep
else
	repeat until contents of tiime is equal to stanswer
	end repeat
end if
*)
