# Define the source and destination
$logSource = "System"          
$logFile = "C:\Logs\event_logs.csv"  
$remoteServer = "C:\Windows_system_logs"  

# Fetch the most recent 1000 events from the specified log
$events = Get-WinEvent -LogName $logSource -MaxEvents 1000

# Export the events to a CSV file
$events | Select-Object TimeCreated, Id, Message | Export-Csv -Path $logFile -NoTypeInformation

# Display a message indicating the logs were collected
Write-Host "Logs have been collected and saved to $logFile"

# Copy the CSV log file to the remote server
Copy-Item -Path $logFile -Destination $remoteServer

# Clean up the local log file
Remove-Item -Path $logFile

# Display completion message
Write-Host "Log file has been copied to $remoteServer and local file has been deleted."
