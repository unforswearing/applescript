set {vol, gave} to {button returned, gave up} of (display dialog "Volume" buttons {"High", "Low", "Cancel"} cancel button 3 with icon note giving up after 1800)
if vol contains "High" then set volume 6
if vol contains "Low" then set volume 4
