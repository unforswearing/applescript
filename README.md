applescript
============
<BR>
###overview
A collection of various applescripts I have created. I try to keep them general (rather than application specific) so that they could be useful to as many people as possible. 

<BR>
###scripts 
∫∫ **Application Services**  
launch, watch, and quit applications via several scripts

∫∫ **File and Folder Actions**  
Several scripts I deploy as services. 

∫∫ **Location Helper Scripts**  
A few scripts that use the Location Helper application

∫∫ **Notational Velocity**  
A few Notational Velocity scripts. 

∫∫ **Pandoc and Textutils**  
Scripts that use the above mentioned command line tools to convert documents to different formats. 

∫∫ **Sounds Scripts**  
Scripts to adjust the speaker and microphone without opening System Preferences

∫∫ **Temperature Conversion**    
Convert temperature between Fahrenheit and Celsius (and others soon). 

∫∫ **Templates**  
A collection of sketches and beginnings of scripts

∫∫ **Terminal GUI**  
Scripts to enhance my limited terminal usage.

∫∫ **Camtasia Auto Record Timer.scpt**  
A script that uses a few items from the hidden applescript dictionary for Camtasia. Useful for when you need to capture video of something happening on the screen, but won't be around to do it manually. May be variably functional, though the last few tests were successful. 

∫∫ **Google Chrome Tab Closer.scpt**  
Does what it says, though more specifically, it closes all tabs, but keeps the application open. 

∫∫ **Chrome to Safari**  
A (comparatively) simplified version of many of the "Send URL to Safari" scripts I have seen. 

<BR>
###links/dependencies  

- [Caffeine App](http://lightheadsw.com/caffeine/) (or [here](http://macdownload.informer.com/caffeine)) - a menu bar application that prevents your monitor from sleeping. 
  - if you don't want to add an additional application to your menubar, you can use ``pmset noidle`` and then simulate a ``control + c`` keystroke after the bulk of the script runs to cancel the ``pmset`` command (via key codes). [link](http://lifehacker.com/5767991/how-to-force-your-mac-to-stay-awake-indefinitely-via-the-command-line).     
  - if you are running a newer version of OSX (10.8 and up), you can replace the Caffeine application with the [caffeinate command](https://developer.apple.com/library/mac/documentation/Darwin/Reference/Manpages/man8/caffeinate.8.html): ``$ caffeinate -t 180`` where ``180`` is however many seconds you want to disable the screensaver/sleep.

- [Location Helper](http://www.mousedown.net/mouseware/LocationHelper.html) - use core location in applescripts.  

- [Pandoc](http://johnmacfarlane.net/pandoc/) and [Textutil](https://developer.apple.com/library/mac/documentation/Darwin/Reference/ManPages/man1/textutil.1.html) - document conversion via the command line. 

- Details about my amateur scripting successes can be found on my [Applescript blog](http://www.scriptogr.am/unforswearing)


<BR>
###legal
All scripts are provided AS IS without warranty, etc, etc. All scripts tested on 10.6 and 10.7, and there is a chance that they will not work with newer versions of OSX. Take the plunge. 

