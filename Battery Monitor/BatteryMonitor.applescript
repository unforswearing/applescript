-- Function to format date in a consistent way
on formatDate(dateToFormat)
    set y to year of dateToFormat
    set m to month of dateToFormat
    set d to day of dateToFormat
    set h to hours of dateToFormat
    set min to minutes of dateToFormat
    
    set ampm to "AM"
    set h12 to h
    if h is greater than or equal to 12 then
        set ampm to "PM"
        if h > 12 then set h12 to h - 12
    end if
    if h12 = 0 then set h12 to 12
    
    -- Get the weekday name and take first 3 characters
    set weekdayList to {"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"}
    set weekdayNum to weekday of dateToFormat
    set weekdayName to item weekdayNum of weekdayList
    
    -- Get the month name and take first 3 characters
    set monthList to {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"}
    set monthName to item m of monthList
    
    -- Format minutes with leading zero if needed
    if min < 10 then
        set minStr to "0" & min
    else
        set minStr to min as string
    end if
    
    return weekdayName & ", " & monthName & " " & d & ", " & y & " " & h12 & ":" & minStr & " " & ampm
end formatDate

-- Function to format date for pause file
on formatPauseDate(dateToFormat)
    set y to (year of dateToFormat) as string
    set m to (month of dateToFormat as integer) as string
    set d to (day of dateToFormat) as string
    set h to (hours of dateToFormat) as string
    set min to (minutes of dateToFormat) as string
    
    -- Ensure month and minutes have leading zeros if needed
    if (month of dateToFormat as integer) < 10 then
        set m to "0" & m
    end if
    if (minutes of dateToFormat) < 10 then
        set min to "0" & min
    end if
    
    set dateString to y & " " & m & " " & d & " " & h & ":" & min
    return dateString
end formatPauseDate

-- Function to validate and get hours input
on validateAndGetHours()
    repeat
        try
            set customInput to display dialog "Enter pause duration in hours:" default answer "1" buttons {"Cancel", "OK"} default button "OK" with icon note with title "Custom Pause Duration"
            
            if button returned of customInput is "Cancel" then
                return null
            end if
            
            set inputHours to (text returned of customInput) as integer
            if inputHours is less than or equal to 0 then
                display dialog "Please enter a valid positive whole number" buttons {"Try Again"} default button "Try Again" with icon stop
            else
                return inputHours
            end if
        on error
            display dialog "Invalid input: Please enter a valid positive whole number" buttons {"Try Again"} default button "Try Again" with icon stop
        end try
    end repeat
end validateAndGetHours

-- Function to parse date string safely
on parsePauseDate(dateStr)
    try
        -- First trim any whitespace
        set dateStr to do shell script "echo " & quoted form of dateStr & " | tr -d '\\n' | tr -d '\\r'"
        
        -- Split the string into components
        set AppleScript's text item delimiters to " "
        set dateParts to text items of dateStr
        
        -- Validate we have exactly 4 parts
        if (count of dateParts) is not 4 then
            error "Invalid date format: wrong number of components"
        end if
        
        -- Create a new date object
        set theDate to current date
        
        -- Parse the time component first
        set timeStr to text item 4 of dateParts
        set AppleScript's text item delimiters to ":"
        set timeParts to text items of timeStr
        
        -- Set each component individually
        set year of theDate to text item 1 of dateParts as number
        set month of theDate to text item 2 of dateParts as number
        set day of theDate to text item 3 of dateParts as number
        
        if (count of timeParts) is 2 then
            set hours of theDate to text item 1 of timeParts as number
            set minutes of theDate to text item 2 of timeParts as number
            set seconds of theDate to 0
        else
            error "Invalid time format"
        end if
        
        return theDate
    on error errMsg
        error "Failed to parse pause date: " & errMsg
    end try
end parsePauseDate

-- Main script
on run
    set logMessages to ""
    set now to current date
    set notificationResult to false -- Initialize notification result variable
    
    -- Set up file paths
    set downloadsPath to (path to downloads folder as text)
    set logFilePath to downloadsPath & "batteryMonitorLogs.txt"
    set pauseFilePath to downloadsPath & "batteryMonitorPause.txt"
    
    set logMessages to logMessages & "Script started at " & (my formatDate(now)) & return
    
    try
        -- Check if pause is active
        tell application "System Events"
            if exists file pauseFilePath then
                try
                    set pauseContent to read file pauseFilePath
                    set pauseUntil to my parsePauseDate(pauseContent)
                    
                    if now < pauseUntil then
                        set logMessages to logMessages & "Script is paused until " & (my formatDate(pauseUntil)) & return
                        my appendToFile(logFilePath, logMessages)
                        return logMessages
                    else
                        -- Only delete the pause file if the pause time has expired
                        delete file pauseFilePath
                    end if
                on error errMsg
                    -- Log the error but continue with the script
                    set logMessages to logMessages & "Error reading pause file: " & errMsg & return
                end try
            end if
        end tell
        
        -- Get battery level using shell command
        set batteryInfo to do shell script "pmset -g batt"
        set batteryLevel to text ((offset of "%" in batteryInfo) - 3) thru ((offset of "%" in batteryInfo) - 1) of batteryInfo as integer
        set logMessages to logMessages & "Battery level is " & batteryLevel & "%" & return
        
        -- Check charging status
        set isCharging to batteryInfo contains "AC Power"
        if isCharging then
            set logMessages to logMessages & "Device is charging" & return
        else
            set logMessages to logMessages & "Device is not charging" & return
        end if
        
        -- Handle notifications
        if batteryLevel > 80 and isCharging then
            set notificationResult to display alert "Battery Monitor" message "Battery is above 80%. Consider unplugging the charger." buttons {"Dismiss", "Pause Options"} default button "Dismiss"
            set logMessages to logMessages & "Notification sent: Battery above 80% while charging" & return
        else if batteryLevel < 35 and not isCharging then
            set notificationResult to display alert "Battery Monitor" message "Battery is below 35%. Consider plugging in the charger." buttons {"Dismiss", "Pause Options"} default button "Dismiss"
            set logMessages to logMessages & "Notification sent: Battery below 35% while not charging" & return
        else
            set logMessages to logMessages & "No notification needed" & return
        end if
        
        -- Handle pause options
        if notificationResult is not false and button returned of notificationResult is "Pause Options" then
            set pauseResult to display alert "Select Pause Duration" message "Choose how long to pause notifications:" buttons {"Cancel", "1 Hour", "Custom"} default button "Cancel"
            
            if button returned of pauseResult is not "Cancel" then
                set hours to 1 -- Default to 1 hour
                
                if button returned of pauseResult is "Custom" then
                    set customHours to my validateAndGetHours()
                    if customHours is null then return
                    set hours to customHours
                end if
                
                set pauseUntil to (current date) + (hours * 3600)
                
                tell application "System Events"
                    set pauseFile to open for access file pauseFilePath with write permission
                    -- Use the new formatting function
                    set dateString to my formatPauseDate(pauseUntil)
                    write (dateString & return) to pauseFile
                    close access pauseFile
                end tell
                
                set logMessages to logMessages & "Notifications paused until " & (my formatDate(pauseUntil)) & return
                display dialog "Notifications paused until " & (my formatDate(pauseUntil)) buttons {"OK"} default button "OK"
            end if
        end if
        
    on error errorMessage
        set logMessages to logMessages & "Error: " & errorMessage & return
        display dialog "Unexpected Error: " & errorMessage buttons {"OK"} default button "OK"
    end try
    
    set logMessages to logMessages & "Script ended at " & (my formatDate(current date)) & return
    my appendToFile(logFilePath, logMessages)
    return logMessages
end run

-- Helper function for appending to file
on appendToFile(filePath, contents)
    try
        set fileHandle to open for access file filePath with write permission
        write contents to fileHandle starting at eof
        close access fileHandle
    on error
        try
            close access file filePath
        end try
    end try
end appendToFile