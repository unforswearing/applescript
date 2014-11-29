# Generate passwords containing letters, numbers, and some punctuation 
# Alter the order to suit your needs
# Generated passwords will be copied to the clipboard

set maxValue to 10000
set thePairs to {}
repeat until (count thePairs) = 2
	set randomNumber to (random number from 0 to maxValue)
	if thePairs does not contain {randomNumber} then set end of thePairs to randomNumber
end repeat


set x to {}
repeat random number 20 times
	set end of x to some item of "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
end repeat
x as text

set m to {}
repeat 3 times
	set end of m to some item of "?!"
end repeat
m as list

set pass1 to item 1 of thePairs
set pass2 to item 2 of thePairs

set punct1 to item 1 of m
set punct2 to item 2 of m
set punct3 to item 3 of m

set passwerd to pass1 & punct3 & punct1 & x & punct2 & pass2 as text
set the clipboard to passwerd
