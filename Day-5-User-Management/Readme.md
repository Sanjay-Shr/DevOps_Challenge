# Day 5 | Linux Server Setup & User Management

Today, I practiced a real-world DevOps task: setting up and managing users on a Linux system. 

Since I don’t have access to a production server, I created a demo environment on my laptop to simulate tasks like user onboarding and system monitoring.

## Tasks Performed

1. **System Info & Health**
   - `uname -a`, `uptime`, `date`, `who`, `whoami`

2. **Package Installation**
   - `sudo apt update`
   - `sudo apt install vim git htop`
   - `which vim`

3. **User & Group Management**
   - `sudo adduser dev1`
   - `sudo adduser dev2`
   - `sudo groupadd developers`
   - `sudo gpasswd -a dev1 developers`
   - `id dev1`, `groups dev1`
   - Cleanup: `sudo userdel -r dev1`, `sudo userdel -r dev2`, `sudo groupdel developers`

4. **System Resource Monitoring**
   - `df -h`, `du -sh /home/*`
   - `free -m`, `vmstat 1 3`

## Key Takeaways
- User and group management is critical for system administration.
- Combining system info, package management, and user management simulates real DevOps workflows.
- Practicing in a demo environment helps build confidence before handling production servers.

---

Quick Question:  How does your team manage Linux server setup and user accounts? Any tips or tools you recommend?

#DevOps #Linux #UserManagement #SysAdmin #ServerSetup #LearningByDoing #HandsOn

