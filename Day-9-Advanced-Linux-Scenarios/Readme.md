# Day 9 | Advanced Linux Scenarios

Today, I simulated **two real-world Linux scenarios** to enhance my DevOps skills — all on my local Linux system since I didn’t have access to real production servers.

---

## Scenario 1 — Linux Server Onboarding & Initial Health Check
- Simulated adding a new server for deployment.
- Checked system info and uptime (`uname`, `uptime`, `date`).
- Verified users and groups (`who`, `whoami`, `id`, `groups`).
- Managed new user accounts (`adduser`, `passwd`, `groupadd`, `gpasswd`).
- Checked system resources (`df`, `du`, `free`, `vmstat`).
- Verified network connectivity and open ports (`ping`, `nc`, `telnet`, `ss`, `ifconfig`).

## Scenario 2 — Troubleshooting & Optimizing an Existing Web Application Server
- Simulated performance issues on a web app server.
- Monitored CPU and memory usage (`top`, `ps`, `kill`).
- Checked logs, analyzed errors, and archived them (`cat`, `grep`, `awk`, `sed`, `tar`, `gzip`, `gunzip`).
- Managed file permissions and ownership (`chmod`, `chown`, `chgrp`, `umask`).
- Validated network interfaces and connections (`ip`, `netstat`, `arp`, `dig`, `whois`).

---

## How to Run
1. Make the script executable:
```bash
chmod +x advanced_linux_scenarios.sh

