# Cross-Platform Log Automation (Windows & Linux)

## Project Description

This project automates the process of securely transferring logs from **Linux** and **Windows** systems to a **remote server** or **shared folder**. The solution uses **rsync** on Linux and **SCP** on Windows to transfer logs securely over **SSH** to a designated location. The scripts are fully customizable and can be scheduled to run at regular intervals using **cron** (Linux) or **Task Scheduler** (Windows).

The main goal of this project is to centralize log storage for security monitoring and auditing, ensuring that logs are regularly backed up and available for analysis without the need for manual intervention.

## Features

- **Cross-Platform**: Compatible with both **Linux** and **Windows** machines.
- **Secure Transfer**: Uses **rsync** (Linux) and **SCP** (Windows) to transfer logs securely over SSH.
- **Customizable**: Easily modify the log file paths, remote server, and transfer schedule to fit your needs.
- **Automated**: The scripts can be scheduled to run automatically using **cron** (Linux) or **Task Scheduler** (Windows).
- **Multiple Storage Options**: Logs can be sent to a **remote server** or a **shared folder** for easy access and centralized storage.

## Project Files

1. **Linux Script** (`send_logs.sh`):
   - A bash script that automates log forwarding from a Linux machine to a remote server or shared folder using **rsync**.
   - Supports flexible configuration for log paths and remote destination.

2. **Windows Script** (`send_logs.ps1`):
   - A PowerShell script for transferring logs from a Windows machine to a remote server or shared folder using **SCP**.
   - Easy to customize for various log sources and destinations.

3. **README.md**: Project documentation (this file).

## How to Use the Scripts

### Linux Log Automation (`send_logs.sh`)

1. **Modify the Script**:
   Open the `send_logs.sh` script in a text editor and change the following details:
   - **Remote Server IP**: Replace with the IP or hostname of the remote server.
   - **Remote Path**: The path where logs will be stored on the remote server (e.g., `/path/to/logs/`).
   - **Local Log Files**: Specify the log files you want to forward (e.g., `/var/log/syslog`, `/var/log/auth.log`).

2. **Make the Script Executable**:
   Before running the script, make sure it's executable:
   ```bash
   chmod +x send_logs.sh
   Test the Script:
3. To test the script, run it manually:

bash
Copy
Edit
./send_logs.sh

4. Schedule the Script with Cron:
Set up a cron job to run the script at regular intervals. For example, to run it every hour:

bash
Copy
Edit
crontab -e
# Add the following line to the cron file
0 * * * * /path/to/send_logs.sh
