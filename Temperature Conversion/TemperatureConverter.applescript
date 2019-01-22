--- Convert temperatures between Celsius, Fahrenheit, and Kelvin

set whichconv to choose from list {"Celsius to Fahrenheit", "Celsius to Kelvin", "Fahrenheit to Celsius", "Fahrenheit to Kelvin", "Kelvin to Celsius", "Kelvin to Fahrenheit"} with title "Convert Temperature"
set whichconv to whichconv as text

if whichconv is "Fahrenheit to Celsius" then
	set ftemp to text returned of (display dialog "Convert Fahrenheit to Celsius" default answer "" buttons {"Cancel", "Convert"} default button "Convert")
	set conversion1 to (ftemp - 32) * 5 / 9
	set conversion1 to round conversion1
	display dialog "The temperature is " & conversion1 & " Celsius" buttons {"Ok"} default button "Ok"
	
else if whichconv is "Celsius to Fahrenheit" then
	set ftemp to text returned of (display dialog "Convert Celsius to Fahrenheit" default answer "" buttons {"Cancel", "Convert"} default button "Convert")
	set conversion1 to ftemp * 9 / 5 + 32
	set conversion1 to round conversion1
	
	display dialog "The temperature is " & conversion1 & " Fahrenheit" buttons {"Ok"} default button "Ok"
	
else if whichconv is "Fahrenheit to Kelvin" then
	set ftemp to text returned of (display dialog "Convert Fahrenheit to Kelvin" default answer "" buttons {"Cancel", "Convert"} default button "Convert")
	set conversion1 to (ftemp + 459.67) * 0.5555555556
	set conversion1 to round conversion1
	
	display dialog "The temperature is " & conversion1 & " Kelvin" buttons {"Ok"} default button "Ok"
	
else if whichconv is "Kelvin to Fahrenheit" then
	set ftemp to text returned of (display dialog "Convert Fahrenheit to Kelvin" default answer "" buttons {"Cancel", "Convert"} default button "Convert")
	set conversion1 to (ftemp * 1.8) - 459.67
	set conversion1 to round conversion1
	
	display dialog "The temperature is " & conversion1 & " Fahrenheit" buttons {"Ok"} default button "Ok"
	
else if whichconv is "Celsius to Kelvin" then
	set ftemp to text returned of (display dialog "Convert Celsius to Kelvin" default answer "" buttons {"Cancel", "Convert"} default button "Convert")
	set conversion1 to (ftemp + 273.15)
	set conversion1 to round conversion1
	
	display dialog "The temperature is " & conversion1 & " Kelvin" buttons {"Ok"} default button "Ok"
	
else if whichconv is "Kelvin to Celsius" then
	set ftemp to text returned of (display dialog "Convert Celsius to Kelvin" default answer "" buttons {"Cancel", "Convert"} default button "Convert")
	set conversion1 to (ftemp - 273.15)
	set conversion1 to round conversion1
	
	display dialog "The temperature is " & conversion1 & " Celsius" buttons {"Ok"} default button "Ok"
	
end if



--- http://www.github.com/unforswearing

