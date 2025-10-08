#!/bin/bash

# Scenario 2: Troubleshooting & Optimizing Web Application

echo "Starting Web Application Troubleshooting & Optimization..."

# 1. Create users and group for app
sudo useradd appuser
sudo groupadd appteam
sudo gpasswd -a appuser appteam

# 2. Setup a demo web app
mkdir -p ~/webapp_demo && cd ~/webapp_demo
echo "<h1>Hello DevOps, My Demo App Works</h1>" > index.html
python3 -m http.server 8080 &

# 3. Check running processes and ports
ps aux | grep http.server
ss -tuln | grep 8080

# 4. Test web app
curl http://127.0.0.1:8080
ping -c 4 127.0.0.1
traceroute 127.0.0.1

# 5. Check system logs for issues
dmesg | tail -n 20
sudo dmesg | tail -n 20
journalctl -xe | head -n 30
htop
free -m
df -h

# 6. Find large files and high CPU processes
find / -type f -size +100M 2>/dev/null
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head

# 7. Kill any rogue or CPU-hogging processes (example PID)
# Replace PID with actual high CPU PID from previous command
# kill -9 <PID>

# 8. Backup web app
mkdir -p ~/webapp_backup
cp ~/webapp_demo/index.html ~/webapp_backup/
tar -czf webapp_backup.tar.gz ~/webapp_backup/

echo "Scenario 2 completed!"

