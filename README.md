# Linux Bash Log Cleanup Script

## Project Overview

This repository contains a Bash script for Linux system administration and log management.

The script automatically deletes `.log` files older than **7 days** from `/var/log` to help prevent old log files from consuming disk space.

## Script

### `clean.sh`

```bash
#!/bin/bash

# Author: Safiatu Seidu
# Date: AUG 19 2026
# Description: Deletes log files older than 7 days.

find /var/log -type f -name "*.log" -mtime +7 -delete

echo "Old logs deleted."
```

## How It Works

The script uses the `find` command:

```bash
find /var/log -type f -name "*.log" -mtime +7 -delete
```

* `/var/log` — searches the Linux log directory
* `-type f` — searches for files
* `-name "*.log"` — finds `.log` files
* `-mtime +7` — finds files older than 7 days
* `-delete` — deletes the matching files

## How to Run

Make the script executable:

```bash
chmod +x clean.sh
```

Run the script as root:

```bash
sudo ./clean.sh
```

## Cron Automation

The script can be scheduled to run automatically every day at **2:00 AM**.

Edit the root crontab:

```bash
sudo crontab -e
```

Add:

```cron
0 2 * * * /path/to/clean.sh
```

## Skills Demonstrated

* Bash scripting
* Linux system administration
* Log management
* Disk space management
* `find` command
* Cron scheduling
* Linux automation

## Author

**Safiatu Seidu**

