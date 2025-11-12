# Day 44 | DevOps Challenge — Understanding Docker Volumes and Persistent Storage

## Overview
Today’s learning was centered around one of the most critical aspects of containerization — managing persistent data in Docker.  
By default, containers are ephemeral, meaning data inside them disappears once the container stops or is deleted.  
To solve this, Docker provides Volumes and Bind Mounts, which ensure that data remains available even after containers are recreated.

---

## What I Did
1. Learned the concept of Docker Volumes and Bind Mounts for persistent data storage.
2. Discovered that container storage is temporary unless explicitly mapped to a volume or host directory.
3. Listed existing Docker volumes and created a new volume using  
   "docker volume create mysql-data"
4. Stopped and removed the running MySQL container to rebuild it with persistent storage.
5. Recreated the MySQL container with a named volume attached using  
   "docker run -d --name mysql --network two-tier -v mysql-data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=devops mysql"
6. Inserted sample data through the Flask app, stopped and deleted the MySQL container, and verified that data was retained upon recreation.
7. Used "docker volume inspect mysql-data" and verified persistence by checking the mount directory as a root user.
8. Experimented with **Bind Mounts** by creating a host directory "/home/sanjay/volumes/mysql" and linking it to the MySQL container with  
   "docker run -d --name mysql --network two-tier -v /home/sanjay/volumes/mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=devops mysql"
9. Verified that the host system contained all MySQL database files inside the mounted directory.

---

## Learnings
- **Docker Volumes** are managed by Docker and stored under `/var/lib/docker/volumes/`. They are ideal for containerized applications that need persistent data storage.
- **Bind Mounts** provide flexibility by allowing data to be stored directly on the host machine.
- Data persistence is essential for databases — without it, every restart results in data loss.
- Both Volumes and Bind Mounts are vital tools for handling stateful applications in production.
- Always ensure the correct internal path (like `/var/lib/mysql`) is mapped when using MySQL containers.

---

## Tags
#DevOps #Docker #MySQL #Persistence #Storage #Volumes #BindMounts #DataManagement #Containerization

