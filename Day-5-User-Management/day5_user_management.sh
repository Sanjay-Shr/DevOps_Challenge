#!/bin/bash
# Day 5: Linux Server Setup & User Management Demo

echo "===== SYSTEM INFO ====="
uname -a
uptime
date
who
whoami

echo "===== PACKAGE INSTALLATION ====="
sudo apt update
sudo apt install -y vim git htop
which vim

echo "===== USER & GROUP MANAGEMENT ====="
# Create users
sudo adduser --disabled-password --gecos "" dev1
sudo adduser --disabled-password --gecos "" dev2

# Create group and add users
sudo groupadd developers
sudo gpasswd -a dev1 developers
sudo gpasswd -a dev2 developers

# Check user info
id dev1
groups dev1

# Cleanup demo users and group
sudo userdel -r dev1
sudo userdel -r dev2
sudo groupdel developers

echo "===== SYSTEM RESOURCE CHECK ====="
df -h
du -sh /home/*
free -m
vmstat 1 3

echo "===== DEMO COMPLETE ====="

