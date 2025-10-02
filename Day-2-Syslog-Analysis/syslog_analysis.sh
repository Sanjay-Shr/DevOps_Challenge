#!/bin/bash
# Day 2 | Syslog Analysis Demo

cd /var/log || exit
echo "Current directory: $(pwd)"
ls -lh

echo "Total log entries in syslog:"
wc -l syslog

echo "Last 20 lines of syslog:"
tail -20 syslog

echo "First 3 fields of first 20 log entries:"
cut -d' ' -f1-3 syslog | head -20

echo "First 20 errors in syslog:"
grep -i "error" syslog | head -20

echo "Total number of errors:"
grep -i "error" syslog | wc -l

echo "Top 10 programs/log levels:"
cut -d' ' -f5 syslog | sort | uniq -c | sort -nr | head -10

grep -i "error" syslog | tee syslog_errors.txt

echo "Differences with previous syslog (first 20 lines):"
diff syslog syslog.1 | head -20

clear
echo "===== SYSLOG SUMMARY ====="
echo "Total log entries:"
wc -l syslog
echo "Total errors:"
grep -i "error" syslog | wc -l
