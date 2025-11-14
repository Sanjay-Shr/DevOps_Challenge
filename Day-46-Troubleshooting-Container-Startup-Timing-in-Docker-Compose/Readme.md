# Day 46 | DevOps Challenge — Troubleshooting Container Startup Timing in Docker Compose

## Overview
Today’s focus was entirely on troubleshooting and fixing the issue preventing my two-tier Flask + MySQL Docker Compose setup from running properly. The core of the problem was the startup timing of both services — the Flask application started faster than MySQL and attempted a database connection before MySQL was fully initialized.

---

## What I Did
1. Identified that MySQL requires more time to initialize compared to Flask. Because both containers were starting simultaneously, Flask attempted to connect to the database before it was available.
2. Added a **healthcheck** to the MySQL service in docker-compose.yml. This ensures Docker marks the container as “healthy” only when MySQL is completely ready.
3. Updated the Flask service to wait for the MySQL health status before attempting to start. This prevents the application from initializing prematurely.
4. Restarted the entire setup using Docker Compose and observed the containers transitioning from “starting” to “healthy”.
5. Verified that the application successfully connected to the database and confirmed that the entire project now works as expected through the browser output.
6. Learned how essential service dependencies and healthchecks are in multi-container orchestration.

---

## Learnings
- Multi-container setups rely heavily on **proper service orchestration and dependency management**.
- A **healthcheck** acts as a reliable mechanism to determine when a container is fully ready to accept connections.
- Delayed startup through health-based dependencies prevents unexpected failures and simplifies troubleshooting.
- Reading logs and analyzing container states is crucial in solving Compose-related timing and build issues.
- Today’s debugging improved my understanding of container lifecycle, readiness probes, and orchestrated startup flows.

