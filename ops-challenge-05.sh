#!/bin/bash

# Get the current date and time in the desired format
timestamp=$(date "+%Y%m%d%H%M%S")

# Print the file size of the log files
echo "Size of syslog file: $(du -h /var/log/syslog | cut -f1)"
echo "Size of wtmp file: $(du -h /var/log/wtmp | cut -f1)"

# Compress the log files to the backup directory with timestamped file names
backup_dir="/var/log/backups"
syslog_backup_file="$backup_dir/syslog-$timestamp.zip"
wtmp_backup_file="$backup_dir/wtmp-$timestamp.zip"

zip -q $syslog_backup_file /var/log/syslog
zip -q $wtmp_backup_file /var/log/wtmp

# Clear the contents of the log files
> /var/log/syslog
> /var/log/wtmp

# Print the file size of the compressed files
echo "Size of compressed syslog file: $(du -h $syslog_backup_file | cut -f1)"
echo "Size of compressed wtmp file: $(du -h $wtmp_backup_file | cut -f1)"