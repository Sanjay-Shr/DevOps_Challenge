# Day 14 | DevOps Journey – Debugging Docker & Django (Continued)

## Overview

Yesterday, I successfully launched my **Django Notes App** for the first time using Docker. Everything worked perfectly on the first try. However, today, I decided to push the setup further by running it multiple times to catch any potential errors. That’s when I hit a few roadblocks and spent a considerable amount of time debugging.

Here’s how the day unfolded:

## 1. **First Attempt Yesterday**
- **Docker Setup**: Yesterday, I set up the app using **Docker** and **Docker Compose**, and everything ran smoothly. The **Django app** and **MySQL container** were both up and running without any issues.
- **Surprise Today**: When I decided to run the setup multiple times today, things didn’t go as expected.

## 2. **Debugging Docker Setup & Networking**
- **The Issue**: Upon rerunning the containers, I faced issues with **Docker networking**. The containers weren’t communicating as expected, and I couldn’t get **Django** to connect to **MySQL**.
- **The Fix**: After some debugging, I discovered that the containers weren’t connected to the same Docker network. I created a custom network (`mynet`) and linked both the **Django** and **MySQL** containers to it.

### Commands I used:
- `docker network create mynet`
- `docker run -d --name db_cont --network mynet -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=mydb mysql:8.0`
- `docker run -d --name django_cont --network mynet -e DB_HOST=db_cont -e DB_NAME=mydb -e DB_USER=root -e DB_PASS=root my_django_image`

## 3. **Docker Compose & Build Issues**
- **The Problem**: Next, I ran into issues related to **Docker Compose** caching. When I rebuilt the containers, I saw unexpected behavior—likely caused by old layers being cached.
- **Solution**: To resolve this, I forced **Docker** to rebuild everything from scratch using the `--no-cache` option. After that, I restarted the services using `docker-compose up -d`.

### Key Commands:
- `docker-compose down -v --remove-orphans`
- `docker system prune -af --volumes`
- `docker-compose build --no-cache`
- `docker-compose up -d`

## 4. **Clean-Up & Final Debugging**
- **The Approach**: After several attempts, I decided to do a complete clean-up. I stopped and removed the containers, deleted orphaned volumes, and ensured everything was reset.
- **Final Debugging**: To verify that the containers were working as expected, I used `docker logs` and `docker inspect` commands to check for specific errors.

### Final Troubleshooting Commands:
- `docker logs django_cont`
- `docker inspect db_cont | grep IPAddress`
- `docker exec -it django_cont ping db_cont`

---

 **Looking forward to the next steps in my DevOps journey.**

#DevOps #Docker #Django #ShellScripting #LearningByDoing #ProblemSolving

