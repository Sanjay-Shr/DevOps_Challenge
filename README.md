# Linux for DevOps — Practical Learning Challenge

Welcome to my **Linux for DevOps** repository!  

This repo documents my daily hands-on learning journey to understand Linux commands and practical DevOps workflows. Each day, I tackle real-world problems (or simulate them) to go beyond just reading commands and actually apply them.  

---

## Daily Challenge Overview

### Day 1 | Log Management Basics
- Learned to navigate log directories, archive old logs, view and delete logs.
- Commands used: `cd`, `ls`, `pwd`, `mkdir`, `mv`, `cp`, `cat`, `less`, `head`, `tail`, `rm`, `rmdir`, `touch`.

### Day 2 | Syslog Analysis
- Practiced analyzing system logs using real syslog files.
- Extracted errors, summarized log levels, and compared log differences.
- Commands used: `cut`, `grep`, `sort`, `uniq`, `tee`, `diff`, `wc`, `head`, `tail`.

### Day 3 | Deployment Verification
- Simulated deployment verification by comparing old and new app files.
- Learned how to use `diff`, `wc`, and file copying to verify deployments.
- Commands used: `find`, `diff`, `wc`, `cp`.

### Day 4 | CPU & Memory Troubleshooting
- Monitored and analyzed high CPU/memory usage.
- Simulated a CPU-intensive process and restored normal system performance.
- Commands used: `top`, `ps`, `kill`, `df`, `du`, `free`, `vmstat`, `nohup`.

### Day 5 | Day-5-User-Management
- Simulated a real-world scenario of managing Linux users and groups on a system.
- Added and removed users, changed passwords, created groups, and assigned users to groups.
- Verified system identity and status with commands like `uname`, `uptime`, `who`, `whoami`, and `id`.
- Practiced package management and system commands (`apt`, `yum`, `dnf`, `pacman`, `portage`, `sudo`, `shutdown`, `reboot`).
- Commands used: `adduser`, `useradd`, `userdel`, `groupadd`, `groupdel`, `gpasswd -a`, `passwd`, `su`, `whoami`, `id`, `uname`, `uptime`, `date`, `sudo`, `shutdown`, `reboot`.

### Day-6-File-Permissions-Archiving
- Managing file permissions
- Handling ownership & groups
- Archiving & compressing files for backup

### Day-7-Network-Troubleshooting
- Checked system network info with uname -a, hostname, ip addr, and ifconfig.
- Monitored active connections and listening ports using netstat and ss.
- Tested connectivity to my local system using ping, traceroute, tracepath, and mtr.
- Queried DNS and network resolution with nslookup, dig, and host.
- Connected to local ports with telnet and nc (netcat).
- Checked Wi-Fi link and status using iwconfig and ifplugstatus.

### Day-8-Advanced Log Analysis & Cleanup
- Created sample log files to mimic different app modules.
- Used grep to pull out errors and warnings.
- Parsed and summarized logs with awk.
- Cleaned up and transformed outputs using sed.
- Counted repeated errors to see which issues would need the most attention.
- Found older logs and archived them neatly with tar and gzip.
- Even set up a simple workflow to generate a weekly error summary.

### Day 9 | DevOps Challenge — Full Linux Workflow: Server Onboarding & App Troubleshooting
**Scenario 1: Linux Server Onboarding & Health Check**
- Created users and groups, and verified the system identity.
- Checked uptime, load, and disk/memory usage.
- Explored network configuration using ip, ss, ping, and nslookup.
- Secured files with chmod and created backups using tar and gzip.
- Reviewed logs and overall system health.

**Scenario 2: Troubleshooting & Optimizing a Web Application Server**
- Set up a simple demo web app using Python’s HTTP server.
- Verified service status with ps, ss, and curl.
- Simulated high CPU load and optimized performance using top, vmstat, and kill.
- Checked network connections and logs via dmesg and journalctl.
- Created backups for the app using tar.

---

## How to Use This Repo
Each day has its own folder with:
- `README.md` → explaining the workflow.
- Scripts (`.sh`) → that demonstrate the commands and workflows.

Run scripts using:
```bash
chmod +x <script_name>.sh
./<script_name>.sh
