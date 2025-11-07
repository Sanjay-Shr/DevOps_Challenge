# Day 39 – Fixing Docker Daemon Issue and Learning Docker Images

## Overview
On Day 39, I began the day by resolving a major issue where Docker was installed but not operational.  
The Docker Daemon wasn’t running, preventing all Docker CLI commands from working. After fixing it, I explored **Docker Images** and how they define containerized environments.

## What I Did
- Faced an issue where `docker ps` and `docker info` failed to connect to the Docker Daemon.  
- Resolved it by:
  - Adding the user to the Docker group.  
  - Restarting the Docker service.  
  - Applying the updated group membership.  
- Verified successful Docker CLI access using `docker ps`.  
- Learned about **Docker Images** — the blueprints containing all dependencies and environment configurations.  
- Understood the relationship between **Dockerfile → Image → Container**, forming the base of containerization.  

## Learnings
- Docker Daemon must always be active for Docker CLI communication.  
- Docker group permissions control user-level access to Docker operations.  
- Docker Images serve as immutable templates that define how containers run.  
- Dockerfiles ensure consistent, repeatable builds across all environments.  

## Next Steps
- Create and build my own Dockerfile.  
- Experiment with custom images and container creation.  

---
**Tags:** `Docker` `DockerDaemon` `DockerImages` `Containerization` `DevOps` `Troubleshooting` `Learning`

