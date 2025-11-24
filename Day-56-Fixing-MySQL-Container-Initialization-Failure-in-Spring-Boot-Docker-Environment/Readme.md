# Day 56 – Fixing MySQL Container Initialization Failure in Spring Boot + Docker Environment

## Overview
Today’s work was focused on resolving a MySQL container failure that was preventing the Spring Boot Expenses Tracker application from starting. Even after correcting configuration files, the stack continued to fail due to a deeper issue inside the MySQL data directory.

## What I Did
- Reviewed yesterday’s changes in `docker-compose.yml` and `application.properties`.
- Analysed container logs to confirm that the Spring Boot application was failing due to database connectivity.
- Identified that the MySQL container itself was unable to initialise because of corrupted InnoDB storage within the mounted data directory.
- Removed the problematic MySQL data volume using:
  ```
  sudo rm -rf ./mysql-data
  ```
- Rebuilt and restarted the multi-container environment using:
  ```
  docker compose up --build
  ```
- Verified successful MySQL startup and Spring Boot database connectivity.

## Learnings
- A corrupted MySQL data directory can prevent container startup even when configurations are correct.
- Spring Boot database errors are often downstream effects of the database container failing internally.
- Removing persistent volumes is sometimes necessary for clean reinitialisation when working with local development databases.
- Logs from both application and database containers are essential for accurate troubleshooting.

## Tags
SpringBoot, Docker, MySQL, Troubleshooting, Containers, DevOps, BackendDevelopment

