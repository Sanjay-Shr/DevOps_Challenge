
### **Script File:** `log_analysis.sh`
```bash
#!/bin/bash

# Create demo logs
mkdir -p Day-8-Logs
cd Day-8-Logs || exit
echo -e "INFO: Server started\nERROR: Connection failed\nWARNING: High CPU usage" > app1.log
echo -e "INFO: User login\nERROR: Disk full\nINFO: Backup completed" > app2.log
echo -e "INFO: Task scheduled\nERROR: Memory leak detected\nWARNING: Low disk space" > app3.log

# View logs
echo "All log files:"
ls -lh *.log

# Extract errors
echo "ERROR messages:"
grep "ERROR" *.log

# Only error messages
echo "Parsed ERROR messages:"
grep "ERROR" *.log | awk -F": " '{print $2}'

# Highlight errors
echo "Highlighted errors:"
grep "ERROR" *.log | sed 's/ERROR/ALERT/'

# Count log levels
echo "Log counts:"
echo "INFO: $(grep -c INFO *.log)"
echo "WARNING: $(grep -c WARNING *.log)"
echo "ERROR: $(grep -c ERROR *.log)"

# Repeated errors
echo "Repeated errors:"
grep "ERROR" *.log | awk -F": " '{print $2}' | sort | uniq -c | sort -nr

# Archive old logs
mkdir -p old_logs
find . -name "*.log" -mtime +0 -exec mv {} old_logs/ \;
tar -cvf old_logs_$(date +%F).tar old_logs/
gzip -f old_logs_$(date +%F).tar

echo "Done! Logs archived and compressed."

