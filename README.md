Applescript
============

This repository is a collection of Applescript snippets that can be used individually or part of a larger project. Many of these snippets were written as I was learning to use Applescript and may not represent the best method of undertaking a particular task. Feel free to open an issue or pull request if you find that any of these files do not work for you. You may also open a pull request if you would like to add a script or snippet.

Copies of this repository exist at [Github](https://github.com/unforswearing/applescript) and [Gitlab](https://gitlab.com/unforswearing/applescript).
<BR><BR>

<!--
# Index

[Script Categories](https://github.com/unforswearing/applescript#script-categories)  
[Links / Dependencies](https://github.com/unforswearing/applescript#linksdependencies)  
[Resource Libraries](https://github.com/unforswearing/applescript#other-applescript-resourceslibraries)  
[Bugs / Contributing](https://github.com/unforswearing/applescript#bugs--contributing)  
[To Do](https://github.com/unforswearing/applescript#to-do)  
-->

## Script Categories

- [Application Services](./Application%20Services)
- [Battery Monitor](./Battery%20Monitor)
- [Display Settings](./Display%20Settings)
- [File and Folder Actions](./File%20and%20Folder%20Actions)
- [Location Helper Scripts](./Location%20Helper%20Scripts)
- [Markdown Tools](./Markdown%20Tools)
- [Notational Velocity](./Notational%20Velocity)
- [Pandoc and Textutils](./Pandoc%20and%20Textutils)
- [Reminders App](./Reminders%20App)
- [Snippets](./Snippets)
- [Sound Scripts](./Sound%20Scripts)
- [Temperature Conversion](./Temperature%20Conversion)
- [Terminal](./Terminal)
- [Time and Date](./Time%20and%20Date)
  <BR><BR>


## Links/Dependencies

- [Caffeine App](http://lightheadsw.com/caffeine/) - a menu bar application that prevents your monitor from sleeping. There are also [several](https://itunes.apple.com/us/app/caffeinated-anti-sleep-app/id1362171212?mt=12) [other](https://itunes.apple.com/us/app/amphetamine/id937984704?mt=12) [applications](https://github.com/newmarcel/KeepingYouAwake) that achieve the same goal.
  - If you don't want an extra application in your menubar you can use [`pmset noidle`](https://apple.stackexchange.com/a/1459)
    - [this command must be run as `do shell script "/usr/bin/pmset noidle > /dev/null 2>&1 &"`](https://discussions.apple.com/thread/323661?answerId=323661021#323661021) to prevent the script from waiting for the shell command to complete.
  - Or if you're on 10.8+ you can use the built-in `caffeinate` command, though [it may be broken after Yosemite (10.10)](https://discussions.apple.com/thread/7858428).
  - `caffeinate` and `pmset noidle` can be run via the `do shell script` Applescript command.
- [Pandoc](http://johnmacfarlane.net/pandoc/) and [Textutil](https://ss64.com/osx/textutil.html) - document conversion via the command line.
- <s>`Youtube-Post.scpt` requires [GoogleCL](https://code.google.com/p/googlecl/), which is also useful for blogger, google calendar, and contacts</s>
  - GoogleCL is sadly defunct. Any associated scripts remain for posterity.
- I have also created [a few Gists](https://gist.github.com/unforswearing?s=applescript) for more specific applescript/bash related tasks.

<BR><BR>

## Other Applescript Resources/Libraries

**Tools for Developing Scripts**

*Free*

- [Location Helper](http://www.mousedown.net/mouseware/LocationHelper.html) - use core location in applescripts.
- [Twitter Scripter](http://www.mousedown.net/mouseware/TwitterScripter.html) - interact with Twitter via applescript.
- [Platypus](https://sveinbjorn.org/platypus) - package applescripts with various other scripts (Shell, Python, etc) to create native MacOS applications.

*Paid*

- [CursorCoordinates](http://www.limitpointstore.com/products/cursorcoordinates/)  - get x,y coordinates for clicking and window positions.
- [Dialog Maker](https://itunes.apple.com/us/app/dialog-maker/id457389999?mt=12) - tool to help create dialog boxes
- [Script Debugger](https://latenightsw.com/) - An integrated development environment for Applescript

<br>

**A non-exhaustive list of interesting Applescript resources on Github:**

**[Github Applescript Projects](https://github.com/search?l=AppleScript&q=applescript&type=Repositories)**
<br><br>

*Note Taking/Task Management*
- [OmniFocus and Evernote (and etc)](https://github.com/geekcomputers/Applescript)

*Coding*
- [iTerm and Sublime Text](https://github.com/fallroot/applescript-applets)
- [Custom Iterm Applescripts for Alfred](https://github.com/stuartcryan/custom-iterm-applescripts-for-alfred)
- [Execute Applescript with Node.js](https://github.com/TooTallNate/node-applescript)
- [Execute Applescript with Go](https://github.com/everdev/mack)

*Productivity*
- [Window Layouts with Alfred and Applescript](https://github.com/jgallen23/layouts)
- [Time Tracking with Omnifocus, Tyme, and Fantastical 2](https://github.com/fuxialexander/Applescript)

<br>

**Other useful Applescript resources / tutorials / etc**

- [Basics of Applescript](http://downloads.techbarrack.com/books/programming/AppleScript/website/index.html)
  - Free ebook covering the foundations of applescript scripting. Published in 2014.
- [Introduction to AppleScript Language Guide](https://developer.apple.com/library/archive/documentation/AppleScript/Conceptual/AppleScriptLangGuide/introduction/ASLR_intro.html#//apple_ref/doc/uid/TP40000983)
- [MacOSX Automation/Applescript](https://macosxautomation.com/applescript/)
    - written by [Sal Soghoian](http://macosautomation.com/about.html), the former Apple product manager for automation technologies
- [MacScripter Forums](http://www.macscripter.net/index.php)
- [MacRumors/Mac Programming Forum](https://forums.macrumors.com/forums/mac-programming.73/)
    - not explicitly applescript related, but [searching for "Applescript"](https://forums.macrumors.com/search/4005546/?q=Applescript&o=date) provides some useful results
- [A thorough explanation of "do shell script" in Applescript](https://developer.apple.com/library/archive/technotes/tn2065/_index.html)

<br>

**For JavaScript Users**

- [JavaScript for Automation Cookbook](https://github.com/JXA-Cookbook/JXA-Cookbook/wiki)
  - JavaScript was added as a MacOS automation tool in version 10.10. If you are familiar with (or would prefer to learn) JavaScript, this cookbook is a great resource.

<br>

## Bugs / Contributing

Scripts in this repo were tested on OS X/MacOS **Lion** through **High Sierra**. Please open an issue or pull request if a script does not work as intended.

If you have a script, snippet, or resource that you'd like me to include in this repo, feel free to open a new pull request.

## To Do

*To be completed as I have time*

- [ ] Actually update this repo
- [ ] Reorganize and rename variables, folder structure, docs, readme
- [ ] (Maybe) Build tests (via python nsapplescript)
