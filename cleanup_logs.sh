#!/bin/bash

# Author: Safiatu Seidu
# Date: AUG 19 2026 
# Description: Deletes log files older than 7 days.

find /var/log -type f -name "*.log" -mtime +7 -delete

echo "Old logs deleted."
