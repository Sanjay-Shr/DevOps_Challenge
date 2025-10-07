
---

### **advanced_linux_scenarios.sh** (copy-paste)
```bash
#!/bin/bash

echo "===== Day 9 | Advanced Linux Scenarios ====="

# --------- Scenario 1: Server Onboarding & Initial Health Check ---------
echo -e "\n--- Scenario 1: Server Onboarding & Initial Health Check ---"

# System info
uname -a
uptime
date

# Users & groups
who
whoami
id
groups

# User management simulation
sudo adduser dev1
sudo passwd dev1
sudo groupadd developers
sudo gpasswd -a dev1 developers
id dev1
groups dev1

# System resource checks
df -h
du -sh /home/*
free -m
vmstat 1 3

# Network checks
ping -c 3 127.0.0.1
nc -zv 127.0.0.1 22
telnet 127.0.0.1 22
ss -tuln
ifconfig

# --------- Scenario 2: Troubleshooting & Optimizing Web Application Server ---------
echo -e "\n--- Scenario 2: Troubleshooting & Optimizing Web Application Server ---"

# CPU & Memory monitoring
top -b -n1 | head -20
ps aux --sort=-%cpu | head -10

# Simulate killing a rogue process (if any)
# Example: sudo kill -9 <PID>

# Logs
mkdir -p logs_backup
touch logs_backup/error.log
echo "Sample error" > logs_backup/error.log
cat logs_backup/error.log
grep "Sample" logs_backup/error.log
awk '{print $1}' logs_backup/error.log
sed 's/Sample/Test/' logs_backup/error.log

# Archiving logs
tar -cvf logs_backup.tar logs_backup/
gzip logs_backup.tar
gunzip logs_backup.tar.gz
tar -xvf logs_backup.tar

# File permissions & ownership
umask
chmod 644 logs_backup/error.log
chown $USER:$USER logs_backup/error.log
chgrp $USER logs_backup/error.log
ls -l logs_backup/

# Network validation
ip addr
netstat -tulnp
arp -a
dig google.com
whois example.com

echo -e "\n===== Day 9 Scenarios Completed ====="

