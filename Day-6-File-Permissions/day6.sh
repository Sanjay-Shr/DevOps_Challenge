#!/bin/bash
# Day 6 - File Permissions & Archiving
# Linux for DevOps Learning Challenge

echo "===== Day 6: File Permissions & Archiving ====="

# Step 1: Check default umask value
echo -e "\n[1] Checking default umask value..."
umask

# Step 2: Create a project directory
echo -e "\n[2] Creating project directory..."
mkdir project_day6
cd project_day6 || exit

# Step 3: Create a sample file
echo "This is a test log file" > log.txt
ls -l log.txt

# Step 4: Change file permissions
echo -e "\n[3] Changing file permissions..."
chmod 640 log.txt
ls -l log.txt

# Step 5: Add a new user & group (simulate if already exists)
echo -e "\n[4] Changing ownership and groups..."
# NOTE: replace 'dev1' and 'developers' with existing users/groups in your system
sudo chown $USER log.txt
sudo chgrp $USER log.txt
ls -l log.txt

# Step 6: Compress and decompress using gzip
echo -e "\n[5] Compressing log file with gzip..."
gzip log.txt
ls -l

echo -e "\n[6] Decompressing log file with gunzip..."
gunzip log.txt.gz
ls -l

# Step 7: Archive the whole project directory
echo -e "\n[7] Archiving project directory with tar..."
cd ..
tar -cvf project_day6.tar project_day6
ls -lh project_day6.tar

# Step 8: Extract the archive
echo -e "\n[8] Extracting tar archive..."
tar -xvf project_day6.tar
ls -l

echo -e "\n===== Day 6 Completed Successfully ====="

