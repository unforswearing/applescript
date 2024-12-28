# Battery Monitor

A macOS AppleScript that helps maintain optimal battery health by monitoring battery levels and charging status, providing timely notifications when action is needed.

## Features

- Monitors battery level and charging status
- Notifies when battery level is above 80% while charging
- Notifies when battery level drops below 35% while not charging
- Allows pausing notifications for customizable durations
- Maintains a log file of all activities
- Runs automatically in the background using launchd

## Installation

1. Save the AppleScript file:

   - Create a new file named `BatteryMonitor.applescript`
   - Copy the AppleScript code into this file
   - Save it in a permanent location (e.g., `~/Scripts/BatteryMonitor.applescript`)

2. Create the bash script:

   ```bash
   # Create and edit run_battery_monitor.sh
   echo '#!/bin/bash' > ~/Scripts/run_battery_monitor.sh
   echo 'osascript ~/Scripts/BatteryMonitor.applescript' >> ~/Scripts/run_battery_monitor.sh
   chmod +x ~/Scripts/run_battery_monitor.sh
   ```

3. Set up the launchd service:
   - Create the launch agent configuration file:
   ```bash
   mkdir -p ~/Library/LaunchAgents
   nano ~/Library/LaunchAgents/com.user.batterymonitor.plist
   ```
   - Copy the provided plist content into this file
   - Update the paths in the plist file to match your actual file locations
   - Load the launch agent:
   ```bash
   launchctl load ~/Library/LaunchAgents/com.user.batterymonitor.plist
   ```

## Configuration

The script runs every 5 minutes by default (controlled by the StartInterval key in the plist file). To modify this:

1. Edit the plist file:
   ```bash
   nano ~/Library/LaunchAgents/com.user.batterymonitor.plist
   ```
2. Change the `StartInterval` value (in seconds)
3. Reload the launch agent:
   ```bash
   launchctl unload ~/Library/LaunchAgents/com.user.batterymonitor.plist
   launchctl load ~/Library/LaunchAgents/com.user.batterymonitor.plist
   ```

## Usage

Once installed, the script will:

- Run automatically in the background
- Create log files in your Downloads folder (`batteryMonitorLogs.txt`)
- Show notifications when battery action is needed

When you receive a notification, you can:

1. Click "Dismiss" to acknowledge and close the notification
2. Click "Pause Options" to:
   - Pause for 1 hour
   - Set a custom pause duration
   - Cancel and keep notifications active

## Log Files

The script maintains two files in your Downloads folder:

- `batteryMonitorLogs.txt`: Contains a record of all script activities
- `batteryMonitorPause.txt`: Temporary file that exists only when notifications are paused

## Troubleshooting

1. If the script isn't running:

   ```bash
   # Check the status
   launchctl list | grep batterymonitor

   # Check error logs
   cat /tmp/batterymonitor.err
   ```

2. To stop the service:

   ```bash
   launchctl unload ~/Library/LaunchAgents/com.user.batterymonitor.plist
   ```

3. Common issues:
   - If paths in the plist file don't match your actual file locations
   - If script files don't have correct permissions
   - If the Downloads folder path is incorrect

## Uninstallation

To remove the Battery Monitor:

1. Unload the launch agent:

   ```bash
   launchctl unload ~/Library/LaunchAgents/com.user.batterymonitor.plist
   ```

2. Remove the files:
   ```bash
   rm ~/Library/LaunchAgents/com.user.batterymonitor.plist
   rm ~/Scripts/BatteryMonitor.applescript
   rm ~/Scripts/run_battery_monitor.sh
   ```

## Support

If you encounter any issues:

1. Check the log files in your Downloads folder
2. Verify all file paths are correct
3. Ensure all files have proper permissions
4. Check the error log at `/tmp/batterymonitor.err`
