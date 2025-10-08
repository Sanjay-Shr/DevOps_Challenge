#!/bin/bash

# Scenario 1: Linux Server Onboarding & Initial Health Check

echo "Starting Linux Server Onboarding & Health Check..."

# 1. Create users for the server
sudo adduser testuser1 --gecos "First User,,," --disabled-password
sudo adduser testuser2 --gecos "Second User,,," --disabled-password

# 2. Create folders for demo
mkdir -p ~/day9_folder
echo "Hello DevOps" > ~/day9_folder/demo.txt

mkdir -p ~/app_demo
echo "config=test" > ~/app_demo/config.txt

# 3. Update package lists and install essential packages
sudo apt update -y
sudo apt install -y net-tools traceroute mtr ifplugd dnsutils whois apache2 python3-pip htop

# 4. Setup Apache web server for demo
sudo systemctl enable apache2
sudo systemctl start apache2
sudo mkdir -p /var/www/html/myapp
echo "Hello from DevOps Demo App!" | sudo tee /var/www/html/myapp/index.html

# 5. Generate sample application logs
echo -e "INFO: App started\nERROR: Timeout connecting to DB\nINFO: Retrying...\nERROR: Disk space low" > ~/myapp.log

# 6. System info and monitoring
uname -a
uptime
date
hostname
whoami
id

# 7. List users and groups
cat /etc/passwd | head -n 10
cat /etc/group | head -n 10

# 8. Disk and memory usage
df -h
du -sh /home/*
sudo du -sh /home/*
sudo du -sh /*

top -b -n1 | head -20
free -m
vmstat 1 5

# 9. Network checks
ip addr show
ip route
ping -c 4 8.8.8.8
nslookup google.com
ss -tuln

# 10. Permissions and backups
umask
mkdir ~/backup_demo
cp /etc/hosts ~/backup_demo/
cp /etc/passwd ~/backup_demo/
tar -czvf backup_demo.tar.gz ~/backup_demo/

echo "Scenario 1 completed!"

