# Linux for DevOps — Practical Learning Challenge

Welcome to my **DevOps Challenge** repository!  

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

### Day 10 | Git & GitHub Practice
- Learned full lifecycle of a file: untracked → staged → committed → restored.
- Learned how to connect a local repo to GitHub and push changes.
- Reinforced confidence in handling Git for collaborative projects.

### Day 11 | Git Branching & Collaboration
- Explored forking and cloning repositories.
- Pulled changes from GitHub with `git pull origin main`.
- Created and switched branches (`dev`), pushed changes, and merged PRs into `main`.
- Checked commit history with `git log` and fetched remote branches with `git fetch`.
- Key takeaway: Branches act as “sandboxes” for safe experimentation.
- Commands used: `git branch`, `git checkout`, `git push`, `git pull`, `git fetch`, `git log`.

### Day 12 | Git Hooks & GitHub Actions
- Explored automation both locally and on GitHub.
- Created a pre-commit hook inside `.git/hooks` that runs `flake8` before every commit to ensure clean code.
- Tried GitHub Actions by setting up a `pylint.yml` workflow for automatic linting after every push.
- Understood how Git Hooks handle **local pre-commit checks**, while GitHub Actions ensures **remote CI validation**.

### Day 13 | Shell Scripting Basics  

- Learned about **Linux architecture** — how the kernel, shell, and user space interact.  
- Set up the environment and created the first script `hello.sh`.  
- Gave executable permissions and ran it using `chmod +x` and `./hello.sh`.  
- Practiced **variables, arguments, comments, conditions, and loops** (`for`, `while`).  
- Created multiple demo scripts — `demo.sh`, `conditiondemo.sh`, `loopsdemo.sh`, and `whiloop.sh` — to automate tasks.  
- Understood how shell scripting forms the **foundation of Linux automation**.

### Day 14 | DevOps Challenge — Shell Scripting: Functions & Error Handling

- Focused on enhancing shell scripting skills, specifically functions and error handling.
- Created modular functions for tasks like cloning the Django app, installing dependencies, and deploying in Docker.
- Learned to handle errors using exit codes and conditional checks in place of try/catch.
- Ensured smooth deployment by checking for directory existence and verifying installations.
- Built a deployment script that automates cloning the app, installing Docker/NGINX, and running in containers.
- Encountered and debugged errors such as directory conflicts and dependency issues.
- Successfully deployed the Django app after resolving all issues.
- Gained insights into the importance of anticipating errors in DevOps automation.

### Day 15 | DevOps Journey – Debugging Docker & Django (Continued)
- **Docker Networking**: Created a custom Docker network to allow communication between containers.
    - Commands: `docker network create mynet`, `docker run ...`
- **Docker Compose Caching**: Encountered caching issues while rebuilding containers. Solved it by using the `--no-cache` option.
    - Commands: `docker-compose down -v --remove-orphans`, `docker-compose build --no-cache`
- **Clean-Up & Debugging**: Cleaned up containers, removed orphaned volumes, and used `docker logs` and `docker inspect` to troubleshoot errors.

### Day 16 | DevOps Challenge — Makefile Automation

- Explored **Makefiles** to automate repetitive tasks for a Flask To-Do app.
- Created targets like `setup`, `run`, and `clean` to handle virtual environment, dependencies, and app execution.
- Learned basic error handling within Makefile commands.
- Key takeaway: A single command like `make setup` can replace multiple manual steps, ensuring reproducible workflows and consistent project setups.
- Reinforced the **DevOps mindset**: small automation tools build the foundation for more complex CI/CD pipelines.

### Day 16 | Flask To-Do App with Makefile

- Learned to automate project setup and execution using a **Makefile**.  
- Created targets like `setup`, `run`, and `clean` for dependencies and app execution.  
- Practiced basic error handling in Makefile commands.  
- Key takeaway: Automation saves time, ensures reproducibility, and builds a foundation for CI/CD pipelines.

### Day 17 | DevOps Challenge — Automating EC2 Creation

- Explored automating **EC2 instance creation** using shell scripting and AWS CLI.
- Wrote a basic script to launch an instance with parameters like AMI, instance type, key pair, security group, and subnet.
- Added **basic error handling** by checking the command exit status.
- Implemented **logging** to track output and ensure the script exits gracefully on failure.
- Key takeaway: Even a simple script can automate cloud tasks and make DevOps workflows more reproducible and error-resistant.

### Day 18 – Backup & Rotation Automation  

- Focused on automating backups and rotation using shell scripting.  
- Created a script to back up an important directory automatically.  
- Implemented a 5-day rotation system to remove old backups.  
- Scheduled the script using crontab for periodic execution.  
- Tested and verified the backup and rotation process locally.  
- Learned how automation ensures reliability and consistency.  
- Understood the importance of backup strategies in real-world DevOps.  

### Day 19 | Networking for DevOps
- Started learning **Networking fundamentals**, beginning with the **OSI Model** and **TCP/IP Model**
- Understood how systems communicate and transfer data across different layers
- Learned why networking is essential for DevOps — enabling cloud, containers, and automation to work seamlessly
- Gained insight into how protocols and layers relate to real-world DevOps tools like Docker and AWS
- Next, I’ll explore IP addressing, DNS, routing, and load balancing to build stronger networking skills

### Day 20 | Networking for DevOps — IP, DNS & Nginx Hosting
- Learned about **IP addressing**, **subnets**, **DNS**, **NAT**, and **firewalls**
- Understood how network layers interact to manage connectivity and security
- Installed and configured **Nginx**, hosted a static website, and accessed it through port 80
- Gained hands-on experience linking core networking concepts to real-world DevOps workflows
- Key takeaway: Networking fundamentals like IP, DNS, and NAT are crucial before diving into cloud and container networking

### Day 22 | Networking and Load Balancing
- Explored how load balancers distribute incoming traffic efficiently across multiple servers.  
- Understood the network flow: Internet Gateway → Route Table → Load Balancer → NAT Gateway → Database.  
- Learned how NAT Gateway provides secure outbound access for backend systems.  
- Practiced troubleshooting DNS and connectivity issues using Linux tools.  
- Reinforced the importance of networking fundamentals for every DevOps engineer.

### Day 23 | DevOps Challenge — Load Balancers Explained
- Learned how **load balancers** distribute traffic across multiple servers for reliability.  
- Studied **Application (Layer 7)**, **Network (Layer 4)**, and **Classic Load Balancers**.  
- Understood how ALB handles HTTP/HTTPS and NLB handles TCP/UDP/TLS.  
- Explored **Listeners**, **Target Groups**, and **Traffic Routing** in AWS.  
- Analyzed network flow: Internet Gateway → Route Table → Application → NAT Gateway → Database.  
- Understood the role of load balancers in improving scalability and fault tolerance.  
- Gained insights into designing reliable, distributed cloud architectures.  

---

## How to Use This Repo
Each day has its own folder with:
- `README.md` → explaining the workflow.
- Scripts (`.sh`) → that demonstrate the commands and workflows.

Run scripts using:
```bash
chmod +x <script_name>.sh
./<script_name>.sh
