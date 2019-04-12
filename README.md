Applescript
============

This repository serves as a collection of Applescript snippets that can be used individually or part of a larger project. Many of these snippets were written as I was learning to use Applescript, and may not represent the best method of undertaking a particular task. Feel free to open an issue or pull request if you find that any of these files do not work for you. 

Copies of this repository exist at [Github](https://github.com/unforswearing/applescript ) and [Gitlab](https://gitlab.com/unforswearing/applescript).
<BR><BR>

## Script Categories

- [Application Services](./Application%20Services)
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
  - If you don't want an extra application in your menubar you can use [`pmset noidle`](https://apple.stackexchange.com/a/1459), or if you're on 10.8+ you can use the built-in `caffeinate` command, though [it may be broken after Yosemite (10.10)](https://discussions.apple.com/thread/7858428).  
    - Both work `caffeinate` and `pmset noidle` can be run via the `do shell script` Applescript command.
- [Pandoc](http://johnmacfarlane.net/pandoc/) and [Textutil](https://ss64.com/osx/textutil.html) - document conversion via the command line.
- <s>`Youtube-Post.scpt` requires [GoogleCL](https://code.google.com/p/googlecl/), which is also useful for blogger, google calendar, and contacts</s>
  - GoogleCL is sadly defunct. Any associated scripts remain for posterity.
- I have also created [a few Gists](https://gist.github.com/unforswearing?s=applescript) for more specific applescript/bash related tasks.
- Also, check out my [Alfred Workflows](https://github.com/unforswearing/alfredWorkflows), including [dued](https://github.com/unforswearing/dued), which may be my favorite creation.
  <BR><BR>

## Other Applescript Resources/Libraries

**Tools for Developing Scripts**

*Free*

- [Location Helper](http://www.mousedown.net/mouseware/LocationHelper.html) - use core location in applescripts.
- [Twitter Scripter](http://www.mousedown.net/mouseware/TwitterScripter.html) - interact with Twitter via applescript.

*Paid*

- [CursorCoordinates](http://www.limitpointstore.com/products/cursorcoordinates/)  - get x,y coordinates for clicking and window positions.
- [Dialog Maker](https://sites.google.com/site/dialogmakerhelp/) - tool to help create dialog boxes
- [Script Debugger](https://latenightsw.com/) - An integrated development environment for Applescript

<br>

**A non-exhaustive list of interesting Applescript resources on Github:**

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

- [MacOSX Automation/Applescript](https://macosxautomation.com/applescript/)
    - written by [Sal Soghoian](http://macosautomation.com/about.html), the former Apple product manager for automation technologies
- [MacScripter Forums](http://www.macscripter.net/index.php)
- [MacRumors/Mac Programming Forum](https://forums.macrumors.com/forums/mac-programming.73/)
    - not explicitly applescript related, but [searching for "Applescript"](https://forums.macrumors.com/search/4005546/?q=Applescript&o=date) provides some useful results

<br>

**For JavaScript Users**

- [JavaScript for Automation Cookbook](https://github.com/JXA-Cookbook/JXA-Cookbook/wiki) 
  - JavaScript was added as a MacOS automation tool in version 10.10. If you are familiar with (or would prefer to learn) JavaScript, this cookbook is a great resource. 

<br>

## Bugs / Contributing

Scripts in this repo were tested on OS X/MacOS **Lion** through **High Sierra**. Please open an issue or pull request if a script does not work as intended. 

If you have a script, snippet, or resource that you'd like me to include in this repo, feel free to open a new pull request.

## To Do

- [ ] Test scripts on 10.14 (Mojave)
- [ ] Reorganize repo and readme
- [ ] Use better (more descriptive) filenames