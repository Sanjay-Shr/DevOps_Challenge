# Day 55 – Starting the Spring Boot + Thymeleaf + MySQL Three-Tier Application

## Overview
Today marks the beginning of a new three-tier application setup using Thymeleaf for the frontend, Spring Boot for backend logic, MySQL as the database, and Maven as the build automation tool. The goal was to containerize the full application stack and prepare the environment for further development and debugging.

---

## What I Did Today
- Started a new three-tier application project.
- Cloned the GitHub repository and reviewed the project structure.
- Created the Dockerfile using the Maven base image to build and run the Spring Boot backend.
- Created the `docker-compose.yml` file to orchestrate the Spring Boot application and the MySQL container.
- Ran the Docker Compose setup to test the application flow.
- Analyzed backend logs to understand connection problems between Spring Boot and MySQL.
- Encountered MySQL authentication errors such as “Public Key Retrieval is not allowed”.
- Identified that datasource configurations need to be updated to handle secure MySQL connections.
- Planned to fix the MySQL connectivity issue tomorrow by updating the Spring Boot `application.properties` and MySQL settings.

---

## Learnings
- Spring Boot and MySQL 8 require proper JDBC parameters for secure authentication.
- The “Public Key Retrieval” error often appears when MySQL rejects unsecured authentication from a backend container.
- Multi-tier applications require careful configuration of each layer to ensure smooth communication.
- Docker Compose simplifies orchestration but exposes misconfigurations quickly.
- Reading backend logs is the fastest way to identify DB connectivity issues.
- Maven + Spring Boot + Thymeleaf is a powerful combination for building production-style apps.

## Tags
Spring Boot, Docker, Thymeleaf, MySQL, Maven, DevOps, Full Stack, Three-Tier Architecture
