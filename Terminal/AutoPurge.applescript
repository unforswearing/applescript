--- I work with video a lot and have limited RAM on my work computer, so I scripted to the "purge" command.
--- Change the return time to whatever you want (in seconds)

on idle
	do shell script "purge"
	return 2700
end idle
