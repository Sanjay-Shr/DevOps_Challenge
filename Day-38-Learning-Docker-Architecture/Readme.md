# Day 38 – Learning Docker Architecture

## Overview
On Day 38, I focused on understanding **Docker’s internal architecture**, which defines how containers are created, managed, and controlled.  
This gave me a detailed insight into the role of each core component — Docker Engine, Docker Daemon, Docker CLI, and containerd.

## What I Did
- Studied the 3 key components of Docker Architecture:
  - **Docker Engine** – The core runtime that hosts all Docker components.
  - **Docker Daemon (dockerd)** – Manages containers, builds, and communication with other daemons.
  - **Docker CLI** – The user interface to communicate with Docker services.  
- Learned about **containerd**, the container runtime used by Docker Daemon to create and manage containers.  
- Understood how CLI commands like `docker build` or `docker run` are internally passed from CLI → Daemon → containerd.  
- Created a Docker Hub account and installed Docker Desktop for practical implementation.  

## Learnings
- Docker Engine provides the environment for all Docker operations.  
- Docker Daemon handles build, run, and management operations using containerd.  
- containerd acts as a lightweight, high-performance runtime for container execution.  
- The Docker CLI only sends user instructions; the actual work happens in the Daemon and containerd layers.  

## Next Steps
- Explore Docker images, containers, and basic commands (`docker pull`, `docker run`, `docker ps`).  
- Start building and running my first Docker container locally.  

---
**Tags:** `Docker` `DevOps` `Containerization` `Architecture` `containerd` `DockerEngine` `Learning`

