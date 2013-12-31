--- a simple tool to convert Celsius to Fahrenheit. 
--- because I was bored. 

set ftemp to text returned of (display dialog "Convert Celsius to Fahrenheit" default answer "" buttons {"Cancel", "Convert"} default button "Convert")
set conversion1 to ftemp * 9 / 5 + 32
display dialog "The temperature is " & conversion1 & " Fahrenheit" buttons {"Ok"} default button "Ok"

--- http://www.scriptogr.am/unforswearing
--- http://www.github.com/unforswearing
--- notes@theforeverarrow.com
