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


### Day 24 | Getting Started with Jenkins

- Learned how Jenkins automates build, test, and deployment workflows in CI/CD.  
- Explored Continuous Integration vs Continuous Delivery/Deployment concepts.  
- Set up Jenkins locally and created the first admin user.  
- Understood Jenkins jobs and created a Freestyle Project to automate simple shell tasks.  
- Successfully executed the job and verified outputs.  
- Realized Jenkins forms the backbone of automation in DevOps pipelines.  
- Gained insights into Jenkins integration with AWS, Azure, and GCP.

### Day 25 | Jenkins Pipeline Basics

- Explored Jenkins Pipelines and learned how they enable stage-based automation.
- Created a new pipeline job from the Jenkins dashboard.
- Configured stages to create a folder and file automatically.
- Executed the build successfully, confirming a working setup.
- Understood how pipelines improve visibility and structure in CI/CD.
- Gained confidence to move toward more complex Jenkins workflows.

### Day 26 — Setting Up Linux Server on Virtual Machine

- Installed Linux Server ISO and set up a new Virtual Machine using VirtualBox.  
- Faced an AMD-V error due to KVM kernel conflict while starting the VM.  
- Resolved the issue by managing virtualization modules at the system level.  
- Successfully launched and configured the Linux server environment.  
- Learned about virtualization concepts and kernel-level troubleshooting.  
- Gained deeper insight into setting up DevOps lab environments locally.  

### Day 27 – Chhath Puja Break

- Took a pause from my DevOps journey to celebrate Chhath Puja with family.  
- Dedicated the day to festival rituals and relaxation.  
- Used the time to reflect on learning progress and upcoming goals.  
- Focused on maintaining balance between personal and professional growth.  

### Day 28 – Chhath Puja Continuation

- Continued the Chhath Puja celebrations with family.  
- Engaged in traditional rituals and family support throughout the day.  
- No technical work done, focusing instead on cultural observance and balance.  

### Day 29 | Jenkins with GitHub Integration  

- Connected Jenkins with GitHub for automated CI/CD workflows.  
- Configured GitHub credentials and installed the integration plugin.  
- Set up a personal access token and linked it securely in Jenkins.  
- Created a pipeline job to auto-trigger builds on code pushes.  
- Verified webhook setup and successful automated builds.  
- Learned how secure integrations enable smooth, continuous automation.  

### Day 30 – Jenkins Agent Configuration via SSH

- Configured a Linux-based Jenkins agent and connected it to the master using SSH authentication.  
- Installed Java 21, generated SSH keys, and created a new node with private key credentials.  
- Validated the connection and ensured successful agent communication via remoting.jar.  
- Learned the fundamentals of distributed Jenkins builds and secure node setup for CI/CD scalability.  

### Day 31 – Jenkins Agent Integration and Pipeline Execution

- Configured a remote Linux agent in Jenkins and modified the pipeline to run through it.  
- Verified successful execution and creation of files on the agent system.  
- Created a new Jenkins item *DjangoCICD* linked with GitHub and added webhook-based build triggers.  
- Monitored builds using Stage View and analyzed performance across multiple stages.  

### Day 32 – Enhancing Jenkins Pipeline with Docker Compose and Image Push

- Improved the Jenkins pipeline to use `docker compose up -d` for multi-container orchestration.  
- Started implementing automated Docker image push to Docker Hub.  
- Faced several build and credential issues and focused on troubleshooting them.  
- Refined pipeline logic and reviewed logs for better stability.  
- **Focus:** Docker Compose Integration, Jenkins Automation, and Registry Push Troubleshooting  

### Day 33 – Connecting Jenkins with GitHub Webhooks

- Worked on automating Jenkins builds using GitHub Webhooks for real-time CI/CD triggers.  
- Encountered webhook delivery issues while configuring the connection between GitHub and Jenkins.  
- Troubleshooting network, authentication, and configuration errors to ensure successful integration.  
- Focused on achieving a fully automated build pipeline based on repository commits.  
- **Focus:** Jenkins + GitHub Webhook Integration and CI/CD Trigger Automation

### Day 34 – Successfully Configured GitHub Webhooks with Jenkins

- Connected Jenkins with GitHub Webhooks to automate builds on code commits.  
- Used **ngrok** to expose the local Jenkins server securely to the internet.  
- Resolved the 403 “No valid crumb was included in the request” error by updating Jenkins CSRF settings.  
- Reconfigured the webhook in GitHub and verified the **200 OK** response.  
- **Focus:** GitHub Webhook Integration, Jenkins Security, and CI/CD Automation.

### Day 35 – Implementing Jenkins Shared Libraries for Reusability

- Created a Jenkins Shared Library to reuse pipeline code across multiple projects.  
- Configured the library under **Manage Jenkins → Global Trusted Pipeline Libraries**.  
- Linked the shared library with the **DjangoCICD** project and tested it successfully.  
- Fixed an initial Groovy syntax issue in `hello.groovy` before achieving a successful build.  
**Focus:** Jenkins Shared Libraries, Groovy, and CI/CD Code Reusability.

### Day 36 – Jenkins Role-Based User Management

- Focused on securing Jenkins by setting up **Role-Based Access Control (RBAC)**.  
- Installed and configured the **Role-Based Authorization Strategy** plugin, created multiple roles (admin, developer, viewer), and assigned permissions accordingly.  
- Validated access by logging in as different users to ensure permissions worked as expected.  

### Day 37 – Introduction to Docker and Containerization

- Started learning **Docker** — understanding its origin from **DotCloud** and how it solved the “works on my machine” issue.  
- Explored **Virtualization vs Containerization**, learning how Docker uses the host OS instead of running a full OS like a VM.  
- Gained clarity on why Docker is faster, lighter, and ideal for modern DevOps environments.  

### Day 38 – Learning Docker Architecture

- Explored the internal working of **Docker Architecture**, focusing on Docker Engine, Daemon, CLI, and containerd.  
- Understood how Docker CLI interacts with the Daemon, which uses containerd to create and manage containers.  
- Also created a Docker Hub account and installed Docker Desktop for upcoming hands-on sessions.  

### Day 39 – Fixing Docker Daemon Issue and Learning Docker Images

- Resolved a Docker Daemon issue preventing Docker commands from running by updating group permissions and restarting the service.  
- Verified successful Docker CLI operations and began learning about Docker Images — blueprints that define how containers are built.  
- Understood the flow from Dockerfile → Image → Container.  

### Day 40 – Docker Pull & Java App Image Build

- Today I learnt how to use the docker pull command and built my first Docker image for a Java application.  
- Created a Dockerfile (screenshot attached), built the image, and ran it successfully after resolving some base image errors.  
- It helped me understand the complete workflow from Dockerfile to image to container.  

### Day 41 – Containerizing a Flask App with Docker

- Today I created and containerized a Flask application using Docker.  
- Cloned the project from GitHub, wrote a Dockerfile (screenshot attached), built and ran the container successfully after fixing a port mapping issue.  
- It helped me understand how Docker packages a complete web app environment and how networking between host and container works.

### Day 42 – Understanding Docker Networking

- Learnt about Docker Networking and its seven types — Host, Bridge, User-defined Bridge, None, MACVLAN, IPVLAN, and Overlay.  
- Explored existing default networks using `docker network ls` and created a custom network using the bridge driver.  
- Understood how container networking enables communication and isolation in real-world applications.

### Day 43 – Building a Two-Tier Application with Docker

- Built and ran a two-tier Docker setup with Flask as the backend and MySQL as the database.  
- Created a custom Docker bridge network for container communication and configured environment variables for database connectivity.  
- Resolved MySQL authentication issues by resetting credentials and granting privileges.  
Verified the Flask app was successfully running on port 5000 after linking both containers.

### Day 44 | Docker Volumes and Persistent Storage

- Focused on ensuring data persistence in Docker containers using **Volumes** and **Bind Mounts**.
- Learned how to store and recover MySQL data even after container deletion or restarts.
- Created a named volume `mysql-data`.
- Tested bind mounting a host directory to `/var/lib/mysql`.
- Verified that the data persisted successfully and was accessible directly from the host machine.
- Gained a deeper understanding of how Docker handles stateful services and the importance of volumes in production.

### Day 45 | Docker Compose Basics & Troubleshooting Buildx

- Today, I started learning **Docker Compose**, a tool that lets you define and run multi-container applications with a single YAML file.  
- I rewrote my `docker-compose.yml` file from scratch to understand every configuration section better.  
- Installed Docker Compose v2 and tried running "docker compose up", but encountered Buildx-related issues.  
- Spent time troubleshooting plugin setups, reinstalling components, and checking system compatibility.  
- Although the issue remains unresolved, I now have a much stronger grasp of how Docker Compose and Buildx work together.

### Day 46 | Fixing Timing Issues in Docker Compose (Flask + MySQL)

- Today, I fixed the Docker Compose issue that was stopping my two-tier setup from running.  
- The root cause was that Flask started faster than MySQL, causing early connection failures.  
- I added a **healthcheck** for MySQL and configured Flask to wait until the database became healthy.  
- Once both services were aligned, the application ran successfully and showed the expected output.  
- This session gave me deeper insight into container startup timing, dependencies, and proper orchestration.

### Day 47 — Docker Cleanup and DockerHub Integration

- Today, I learned how to use Docker cleanup commands such as `docker system prune`, `docker rmi`, and `docker images -aq`.  
- I practiced tagging images using `docker image tag` and pushed/pulled images with DockerHub.  
- I updated my `docker-compose.yml` file to use a DockerHub-hosted image instead of building locally.  
- Finally, I ran the setup with `docker compose up` and confirmed that the image was pulled and executed successfully.  
- This helped me understand Docker image lifecycle management and registry-based deployments.

### Day 48 – Multi-Stage Docker Build (Summary)

- Learnt how multi-stage Docker builds help in reducing image size.
- Understood the difference between build stage and runtime stage.
- Used a heavy image only for installing dependencies.
- Used a lightweight image for running the app.
- Successfully reduced the image size from ~1 GB to ~142 MB.
- Multi-stage builds improve efficiency, performance, and security.

### Day 49 - Docker Monitoring & nohup

- Today I worked on improving container log monitoring using `nohup`.  
- Instead of manually running `docker logs` repeatedly, I used `"nohup docker attach 74e7e186a8b3 &"` to store logs in the background.  
- I generated different log outputs by accessing multiple endpoints in my Flask app.  
- All logs were captured inside the `nohup.out` file, making debugging simpler.  
- Learnt how nohup helps maintain continuous logging even after the terminal is closed.  
- A good first step before using advanced monitoring tools like ELK or Prometheus.

### Day 50 - Why Docker Needs Kubernetes in Production

- Today I learnt that Docker is not used alone in production because it cannot handle failures, scaling, or resource management by itself.  
- A simple command like `docker stop 4bd` can accidentally bring down a running container, which makes it risky in live environments.  
- Kubernetes solves this by auto-healing failed containers and launching new ones instantly.  
- It also handles auto-scaling during high traffic events based on CPU and memory usage.  
- Behind Kubernetes, Docker containers still run, but in a controlled and reliable way.  
- This helped me understand why orchestration is essential for real-world production workloads.

### Day 51 - Environment Setup for DevOps Project

- Today I focused on preparing the environment for the new DevOps project.  
- I verified all the necessary tools, prerequisites, and configurations required for development.  
- Reviewed the project structure and planned how components will be organized.  
- Prepared the base setup for Docker, backend services, and supporting tools.  
- This foundation will help avoid issues and make the upcoming development smoother.  
- From tomorrow, I will begin building and integrating the project components.

### Day 52 — Project Setup Summary

- Began setting up a Django + NGINX + MySQL project using Docker.
- Created the Dockerfile for the Django backend from scratch.
- Wrote the `docker-compose.yml` file to manage all three services.
- Prepared folder structure for backend, NGINX, and MySQL volumes.
- Planned service communication and networking.
- Ready to integrate and test the containers in the next phase.

### Day 53 – Improvements to Django + NGINX + MySQL Setup

- Continued working on the Django Notes App project with three containers: Django, NGINX, and MySQL.
- Reviewed and corrected multiple issues in yesterday’s docker-compose configuration.
- Improved service definitions for better reliability and communication across containers.
- Added proper `depends_on` logic so Django does not start before MySQL is ready.
- Implemented a MySQL healthcheck to ensure stable database availability.
- Updated the NGINX configuration to align with Django backend routing.
- Fixed issues in the Django startup command, including running migrations before starting the server.
- Rebuilt all services and tested container interactions.
- Found a few remaining errors that will be fixed in tomorrow’s session.

### Day 54 – Multi-Container Troubleshooting Summary

- Debugged NGINX upstream error caused by incorrect backend service name.
- Corrected routing configuration between NGINX and Django.
- Fixed Django’s DB connection issues by adding a proper MySQL health check.
- Introduced a wait-for-it script to delay Django startup until MySQL is ready.
- Rebuilt all containers to test communication flow.
- Verified successful startup: migrations ran and Gunicorn launched correctly.
- Ensured all three services communicate as expected.

### Day 55 – Three-Tier App Setup Summary

- Began a new three-tier application (Thymeleaf + Spring Boot + MySQL).
- Cloned the repository and reviewed all project files.
- Created Dockerfile using Maven base image for the Spring Boot service.
- Created docker-compose.yml to run backend + MySQL together.
- Encountered a MySQL authentication issue during startup.
- Backend logs showed “Public Key Retrieval is not allowed”.
- Identified that JDBC and MySQL security parameters need updates.
- Will fix connectivity and continue debugging tomorrow.

### Day 56 – Troubleshooting MySQL Startup Failure

- Today I focused on resolving a MySQL container failure that was preventing the Spring Boot application from starting.  
- Even after configuration fixes, the database container was failing due to corrupted InnoDB storage in the data directory.  
- I cleared the MySQL data volume and rebuilt the environment, which restored normal startup.  
- This resolved the JDBC connection issue and stabilised the entire stack.  
- The day highlighted the importance of proper volume handling and reading container logs carefully.  
- Next, I will refine the Docker setup and continue application development.

### Day 57 — Nginx Integration & Domain Mapping

- Added Nginx as a reverse proxy for the Expense Tracker application.
- Fixed MySQL volume permission issues caused by unexpected system restart.
- Created the Nginx directory with `default.conf` and an Nginx Dockerfile.
- Troubleshot a routing failure caused by incorrect proxy_pass port (8000 instead of 8080).
- Successfully integrated Nginx and verified the application output in the browser.
- Added a new domain, configured the A record, and updated Nginx for domain-based access.
- Application is now accessible publicly through the mapped domain. 

### Day 58 — Troubleshooting Website Deployment

- Website deployed via Docker and Nginx is not accessible publicly today.
- Backend Java App and MySQL containers are running successfully.
- Updated DNS records and Nginx configuration, but site still times out.
- Confirmed Tomcat server is operational inside container.
- Suspected issues with routing, DNS propagation, or proxy configuration.
- Collected logs and prepared for detailed troubleshooting tomorrow.
- Ensuring systematic debugging for production-grade deployment.

# Day 59 — Domain Connectivity Fixed

- DNS was not resolving properly, causing the deployed app to be unreachable.
- Verified A records and waited for DNS propagation.
- Corrected Nginx `default.conf` reverse proxy configuration.
- Restarted containers and revalidated routing.
- Application successfully accessible through the custom domain.
- Completed the project after resolving deployment and DNS issues.

---

## How to Use This Repo
Each day has its own folder with:
- `README.md` → explaining the workflow.
- Scripts (`.sh`) → that demonstrate the commands and workflows.

Run scripts using:
```bash
chmod +x <script_name>.sh
./<script_name>.sh
