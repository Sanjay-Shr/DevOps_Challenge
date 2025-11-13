# Day 45 | DevOps Challenge — Getting Started with Docker Compose

## Overview
Today’s session was all about learning Docker Compose — a tool that simplifies running multi-container applications by allowing developers to define services, networks, and configurations inside a single YAML file.  
Instead of manually running each container, Compose automates the orchestration, networking, and build process for all containers at once.

---

## What I Did
1. Learned the fundamentals of Docker Compose and how it automates multiple container deployments.
2. Understood that the configuration file used by Compose is written in YAML format and contains service definitions, environment variables, ports, and dependencies.
3. Deleted the existing `docker-compose.yml` file from my two-tier application project and rewrote it manually to strengthen my understanding.
4. Installed **Docker Compose v2** using "sudo apt-get install docker-compose-v2" after removing older plugin versions.
5. Attempted to run the setup using "docker compose up" to build and start containers simultaneously.
6. Encountered several errors related to **Buildx**, which is responsible for extended build functionalities in Docker.
7. Performed multiple debugging steps — reinstalling Buildx, checking plugin paths, resetting symbolic links, and restarting Docker services.
8. Verified versions for Docker, Buildx, and Docker Compose multiple times to ensure compatibility.
9. Although the issue persisted, I gained valuable hands-on experience in Docker’s plugin management and troubleshooting.

---

## Learnings
- **Docker Compose** is essential for simplifying the deployment of multi-container applications like Flask + MySQL setups.
- The **YAML configuration file** acts as the blueprint for how containers are built, connected, and executed.
- **Buildx** plays a critical role in image building, especially for multi-architecture support, and must be configured correctly for Compose to work.
- Hands-on troubleshooting deepens understanding of Docker’s plugin and network management.
- Debugging is not just about fixing errors but also about learning how Docker’s components interact under the hood.

