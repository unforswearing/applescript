--- a stay open application that will display a dialog box containing your current battery power every 30 minutes once the power cable is unplugged



repeat
	set testt to do shell script "pmset -g ps sed -n"
	if testt contains "Battery Power" then
		repeat until testt contains "AC Power"
			display dialog testt buttons {"OK"} default button "OK" giving up after 20
			delay 1800
		end repeat
	end if
	delay 1800
end repeat
