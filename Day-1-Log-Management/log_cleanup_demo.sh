#!/bin/bash
# Day 1 | Log Management Demo

# Navigate to log folder
cd /var/log || exit
echo "Current directory: $(pwd)"
ls -lh

# Create archive folder
mkdir -p archive/sep-logs

# Move log files to archive
mv *.log archive/sep-logs/

# Backup critical log
cp archive/sep-logs/error.log archive/sep-logs/backup_error.log

# View logs
echo "Displaying first 5 lines of backup_error.log:"
head -5 archive/sep-logs/backup_error.log

# Delete unnecessary demo logs
rm -f archive/sep-logs/old_log_demo.log

# Create new empty log for future
touch archive/sep-logs/new_log.log

echo "Day 1 log management demo completed ✅"
