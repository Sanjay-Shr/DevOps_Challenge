# Day 8 | Advanced Log Analysis & Cleanup

**Scenario:**  
Simulate multiple app log files, analyze errors, summarize issues, and archive old logs.

## Commands & Workflow

```bash
# ---------------------------------------------
# 1. Create demo logs
# ---------------------------------------------
mkdir -p ~/Day-8-Logs
cd ~/Day-8-Logs

echo -e "INFO: Server started\nERROR: Connection failed\nWARNING: High CPU usage" > app1.log
echo -e "INFO: User login\nERROR: Disk full\nINFO: Backup completed" > app2.log
echo -e "INFO: Task scheduled\nERROR: Memory leak detected\nWARNING: Low disk space" > app3.log

# View all logs
ls -lh *.log

# ---------------------------------------------
# 2. Extract errors
# ---------------------------------------------
grep "ERROR" *.log

# ---------------------------------------------
# 3. Extract only error messages
# ---------------------------------------------
grep "ERROR" *.log | awk -F": " '{print $2}'

# ---------------------------------------------
# 4. Highlight errors as ALERT
# ---------------------------------------------
grep "ERROR" *.log | sed 's/ERROR/ALERT/'

# ---------------------------------------------
# 5. Count log levels
# ---------------------------------------------
grep -c "INFO" *.log
grep -c "WARNING" *.log
grep -c "ERROR" *.log

# ---------------------------------------------
# 6. Detect repeated errors
# ---------------------------------------------
grep "ERROR" *.log | awk -F": " '{print $2}' | sort | uniq -c | sort -nr

# ---------------------------------------------
# 7. Move old logs to archive
# ---------------------------------------------
mkdir old_logs
find . -name "*.log" -mtime +0 -exec mv {} old_logs/ \;

# ---------------------------------------------
# 8. Archive old logs
# ---------------------------------------------
tar -cvf old_logs_$(date +%F).tar old_logs/

# ---------------------------------------------
# 9. Compress archive
# ---------------------------------------------
gzip -f old_logs_$(date +%F).tar

