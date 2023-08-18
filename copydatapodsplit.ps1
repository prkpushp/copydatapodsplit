# Import the RobocopyWrapper module
Import-Module RobocopyWrapper

# Source and destination paths
#$sourcePath = "\\win.mykronos.com\w01p01wf06\wf06-app\SharedFiles\DbUpdates"
#$destinationPath = "\\win.mykronos.com\rc01p07-app\p07-app\SharedFiles\DbUpdates"
$sourcePath = "C:\Source"
$destinationPath = "C:\Destination"
$timestamp = Get-Date -Format "yyyyMMddHHmmss"
$logfilepath = "C:\Robocopy_Logfile_$timestamp"

# Options
$copyOptions = "/E /log:$logFilePath"

# Copy files and directories using RobocopyWrapper
Copy-RobocopyItem -SourcePath $sourcePath -DestinationPath $destinationPath -Options $copyOptions -ThreadCount 32
