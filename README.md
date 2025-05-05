# Cross-Platform Log Automation to Remote Server

## Project Overview
This project automates the process of sending system logs from both **Windows** and **Linux** machines to a remote server using secure protocols. The solution consists of two parts:
1. **Linux Log Automation**: A bash script that uses `rsync` to securely transfer logs from a local Linux machine to a remote server.
2. **Windows Log Automation**: A PowerShell script that uses **SCP (Secure Copy Protocol)** to transfer logs from a Windows machine to a remote server.

Both scripts allow for seamless and automated log transfer, ensuring logs are regularly sent to a remote server for centralized monitoring or analysis.

This project is intended to help administrators and cybersecurity professionals automate log forwarding for enhanced security monitoring.

## Features
- **Cross-Platform**: Supports both Windows and Linux environments for log automation.
- **Secure Transfer**: Both Windows and Linux scripts use secure transfer methods (SCP and rsync) over SSH to ensure data protection.
- **Automation**: Logs are transferred automatically at regular intervals using **cron** (Linux) and **Task Scheduler** (Windows).
- **Customizable**: You can customize the scripts to suit different log file paths, remote server destinations, or transfer schedules.

## Project Details
- **Languages Used**:
  - **Linux**: Bash
  - **Windows**: PowerShell
- **Tools Used**:
  - **Linux**: `rsync`, `cron`
  - **Windows**: **SCP**, **PowerShell**, **Task Scheduler**

## Files Included
1. **Linux Script (`send_logs.sh`)**: This bash script automates the process of sending logs from a local Linux machine to a remote server using `rsync` over SSH.
2. **Windows Script (`send_logs.ps1`)**: A PowerShell script that securely transfers logs from Windows machines to a remote server using SCP.
3. **`README.md`**: Documentation for this project (this file).
4. **Sample Log Files**: (Optional) Example log files to demonstrate the functionality of the scripts.

## How to Run the Project

### Linux Log Automation

1. **Modify the `send_logs.sh` Script**:
   - Edit the `send_logs.sh` script with the following details:
     - **Remote Server IP**: The IP address or domain of the remote server where logs will be transferred.
     - **Remote Path**: The directory on the remote server where the logs should be stored.
     - **Local Logs Path**: The path to the local logs that you want to send (e.g., `/var/log/syslog`, `/var/log/auth.log`).

2. **Make the Script Executable**:
   To run the script, you need to make it executable:
   ```bash
   chmod +x send_logs.sh
Run the Script Manually:
To test the log transfer, run the script manually:

bash
Copy
Edit
./send_logs.sh
Automate Log Transfer Using Cron:
Set up a cron job to automatically run the script at regular intervals. For example, to run the script every hour:

bash
Copy
Edit
crontab -e
# Add this line to run the script every hour
0 * * * * /path/to/send_logs.sh
Windows Log Automation
Modify the send_logs.ps1 Script:

Edit the send_logs.ps1 script to include:

Remote Server IP: The IP address of the remote server.

Remote Path: The destination directory on the remote server.

Local Logs Path: The path to the log files you want to send (e.g., Windows Event Logs or Application Logs).

Install WinSCP or OpenSSH:
Ensure WinSCP or OpenSSH is installed on your Windows machine to enable SCP functionality. You can download WinSCP here or use the built-in OpenSSH feature in Windows.

Run the Script in PowerShell:
Execute the PowerShell script by running it in PowerShell:

powershell
Copy
Edit
.\send_logs.ps1
Automate Log Transfer Using Task Scheduler:

Open Task Scheduler and create a new task.

Set the task to run at regular intervals (e.g., daily, hourly).

In the Actions section, choose to run PowerShell and specify the path to the script.

Customization
Log Files: Modify the scripts to include the specific log files you want to forward. For example, you can add /var/log/apache2/* to the Linux script or the Windows Event Logs to the Windows script.

Remote Server: Change the IP address or hostname of the remote server and set the desired directory where logs will be stored.

Transfer Schedule: You can modify the schedule in cron (Linux) or Task Scheduler (Windows) to run the scripts more frequently or at specific times.

Example Log Transfer
Linux:
For example, if you want to send /var/log/auth.log and /var/log/syslog, modify the Linux script to include:

bash
Copy
Edit
rsync -avz /var/log/auth.log user@remote-server:/path/to/logs/
rsync -avz /var/log/syslog user@remote-server:/path/to/logs/
Windows:
For example, to send the Windows Event Log files, you can modify the script as follows:

powershell
Copy
Edit
scp C:\Windows\System32\winevt\Logs\Security.evtx user@remote-server:/path/to/logs/
