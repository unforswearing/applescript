--- Script for when you want to close an application in the future, but you don't want to be bothered to remember to do it
--- Uses hours...script can be adjusted to use minutes


display dialog "Choose the application you want to shut down"
set applic to choose file with prompt "Choose Application" default location "/Applications"
set applic to POSIX path of applic
delay 0.5
set danswer to display dialog "How many hours until this application shuts down?" default answer ""
set danswer to text returned of danswer
set tymer to 60
set hhour to tymer * tymer
delay hhour * danswer
tell application applic to quit

 
--- http://www.scriptogr.am/unforswearing
--- http://www.github.com/unforswearing
--- notes@theforeverarrow.com
