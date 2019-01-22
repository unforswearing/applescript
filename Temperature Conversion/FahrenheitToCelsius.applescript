--- a simple tool to convert Fahrenheit to Celsius. 
--- because I was bored. 

set ftemp to text returned of (display dialog "Convert Fahrenheit to Celsius" default answer "" buttons {"Cancel", "Convert"} default button "Convert")
set conversion1 to (ftemp - 32) * 5 / 9
display dialog "The temperature is " & conversion1 & " Celsius" buttons {"Ok"} default button "Ok"


--- http://www.github.com/unforswearing

