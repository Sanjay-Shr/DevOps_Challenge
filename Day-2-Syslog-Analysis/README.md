# Day 2 | DevOps Challenge — Syslog Analysis

Today I practiced analyzing real-time logs using syslog to simulate how a DevOps engineer monitors system health.

## What I did:

1. Navigated to the log directory using cd /var/log and listed files using ls -lh
2. Counted total log entries using wc -l syslog
3. Viewed the last 20 lines of syslog using tail -20 syslog
4. Extracted the first 3 fields (date & time) from syslog using cut -d' ' -f1-3 | head -20
5. Searched for all 'error' lines using grep -i "error" | head -20
6. Counted total errors using grep -i "error" | wc -l
7. Summarized log levels using cut, sort, and uniq -c
8. Saved error logs while displaying using tee
9. Compared current syslog with previous logs using diff
10. Cleared the screen and displayed a summary of total logs and errors

Even though this was on my local system, it gave me practical exposure to real-time log monitoring and analysis.
