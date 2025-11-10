# Day 43 – Building a Two-Tier Dockerized Application (Flask + MySQL)

## **Overview**
On Day 43, I started building and deploying a **two-tier Dockerized application** consisting of a Flask backend connected to a MySQL database.  
This exercise helped me understand how multiple containers can communicate and work together through Docker networking.

---

## **What I Did**
- Built and ran the Dockerfile for a Flask-based backend application.  
- Ran the Flask container on port **5000** using environment variables for database connectivity.  
- Created a **Docker network** named `two-tier` using the bridge driver with:  
  `docker network create two-tier -d bridge`  
- Deployed the MySQL container on the same network using:  
  - `-d` → run in detached mode  
  - `--name mysql` → assign container name  
  - `--network two-tier` → connect Flask and MySQL via the same bridge  
  - `-e MYSQL_ROOT_PASSWORD=root` → set MySQL root password  
  - `-e MYSQL_DATABASE=devops` → create the *devops* database  
- Encountered connection issues between Flask and MySQL due to authentication errors.  
- Logged into MySQL, reset the password, and executed:  
GRANT ALL PRIVILEGES ON . TO 'root'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;

- Re-ran the Flask container with updated environment variables and confirmed that the application connected successfully to MySQL.  
- Verified functionality using `docker ps` and accessed the app on port 5000.

---

## **Learnings**
- **Docker networking** plays a crucial role in multi-container setups.  
- Database containers often need fine-tuned permissions and user access control.  
- Using environment variables simplifies containerized application configurations.  
- Multi-tier Docker applications simulate real-world DevOps deployments effectively.

---

## **Tags**
`DevOps` `Docker` `Flask` `MySQL` `TwoTierApp` `Containerization` `Networking` `LearningByDoing`
