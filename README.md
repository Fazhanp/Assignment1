# Cloud_assignment1
assignment 1
# EC2 System Monitoring with Bash

## Overview

This project uses a Bash script to monitor an Ubuntu EC2 instance. The script displays CPU, memory, disk, and running service information. Its output can be saved to a log file, and cron can run it automatically each day.

## Tasks Completed

### 1. Launch and connect to an EC2 instance

Launched an Ubuntu EC2 instance on AWS and connected to it as the `ubuntu` user.

### 2. Install Git

Installed Git on the instance:

```bash
sudo apt update
sudo apt install git -y
```

### 3. Create the project directory and Git repository

Created a folder for the assignment and initialized Git:

```bash
mkdir -p ~/shell_assignment
cd ~/shell_assignment
git init
```

### 4. Create the monitoring script

Created `monitor.sh` to display:

- The date and hostname
- CPU usage
- Memory usage
- Disk usage
- Currently running services

The script starts with the Bash interpreter line:

```bash
#!/bin/bash
```

Made the script executable:

```bash
chmod +x monitor.sh
```

### 5. Push the project to GitHub

Created a GitHub repository and connected it to the local repository:

```bash
git remote add origin <your-repository-url>
```

Committed and pushed the project:

```bash
git add .
git commit -m "Add EC2 monitoring script"
git branch -M main
git push -u origin main
```

If `origin` is already configured, it does not need to be added again.

### 6. Save monitoring output to a log

Ran the script and appended its output to `monitor_logs.txt`:

```bash
./monitor.sh >> monitor_logs.txt
```

### 7. Format and review the output

Added section headings to make the monitoring output easier to read, then ran the script:

```bash
./monitor.sh
```

### 8. Schedule daily monitoring with cron

Edited the user crontab:

```bash
crontab -e
```

Added this line to run the script every day at 9:00 AM server time and append its output and errors to the log:

```cron
0 9 * * * /home/ubuntu/shell_assignment/monitor.sh >> /home/ubuntu/shell_assignment/monitor_logs.txt 2>&1
```

Checked the saved cron schedule with:

```bash
crontab -l
```

### 9. Commit and push the final changes

Checked the repository status, staged the project files, committed the changes, and pushed them to GitHub:

```bash
git status
git add .
git commit -m "Complete monitoring assignment"
git push
```

## Files

- `monitor.sh` — Bash system monitoring script
- `monitor_logs.txt` — Saved monitoring output
- `README.md` — Project documentation

## Repository

GitHub: <your-repository-url>

## Screenshots

Add screenshots of the EC2 connection, script output, log file, cron schedule, and GitHub repository as required by the assignment.
