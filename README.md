# ScrollLock-toggle no-sleep routine

This is a Bash script that simulates the Scroll Lock key to prevent a computer from going to sleep. The script toggles the Scroll Lock key every few seconds to keep the computer awake. The script also displays the elapsed time since it started running at regular intervals.

# Bash script - Linux and macOS
## Prerequisites

To run this script, you need to have ```xdotool``` installed on your system. ```xdotool``` is a command-line tool that is used to simulate key presses and mouse clicks. Here are the installation instructions for different operating systems:

### macOS
To install ```xdotool``` on macOS, you need to install XQuartz, which provides an X11 window system for macOS. You can then install ```xdotool``` using Homebrew by running the following command in the Terminal:
```bash
brew install xdotool
```

### Ubuntu/Debian
To install ```xdotool``` on Ubuntu/Debian, you can use the following command in the Terminal:
```bash
sudo apt-get install xdotool

```

### CentOS/RHEL
To install ```xdotool``` on Ubuntu/Debian, you can use the following command in the Terminal:
```bash
sudo yum install xdotool

```

## Usage
To run the script, open the Terminal and navigate to the directory where the script is located. Then, run the following command:

Make the script executable
```bash
chmod +x scrolllock.sh
```
Run the script
```bash
./scrolllock-toggle.sh
```
You can also pass two optional parameters to the script:

- sleep: Specifies the sleep time in seconds (default is 10 seconds).
- interval: Specifies the announcement interval in cycles (default is 10 cycles).

For example, to set the sleep time to 5 seconds and the announcement interval to 5 cycles, run the following command:
```bash
./scrolllock-toggle.sh --sleep 5 --interval 5
```

## Script output
The script will continuously toggle the Scroll Lock key and print elapsed time announcements at the specified interval. The announcements will be displayed in the terminal window.

Additional Notes
- The script can be paused or terminated by pressing Ctrl+C in the terminal window.
- The script will automatically restart if it is terminated.

Please note:** The script is provided for educational purposes only and should not be used in production environments.

# Powershell script - Windows
## Usage
1. Open PowerShell on your Windows machine.
2. Navigate to the directory where the script is located using the cd command.
3. Run the following command to execute the script:
```powershell
.\script.ps1
```

You can also pass parameters to the script by adding them after the script name. For example, to pass the value ```10``` to the ```$sleep``` parameter and the value ```5``` to the ```$interval``` parameter, run the following command:
```powershell
.\script.ps1 -sleep 10 -interval 5
```