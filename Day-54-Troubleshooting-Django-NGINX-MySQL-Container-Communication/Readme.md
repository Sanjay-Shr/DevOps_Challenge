# Day 54 – Troubleshooting Django + NGINX + MySQL Container Communication

## Overview
Today’s session focused on resolving the multiple container-level errors that occurred after setting up the Django + NGINX + MySQL architecture. The main issues were related to incorrect upstream references, improper service ordering, and MySQL initialization delays. The goal was to stabilize the environment and ensure all three services could communicate properly.

---

## What I Did Today
- Debugged NGINX startup failure caused by an incorrect upstream host name.
- Updated the NGINX config to properly point to the Django backend service.
- Analyzed logs to identify Django’s recurring database errors.
- Added a health check to MySQL so Django waits until the DB is fully ready.
- Updated Compose service logic to ensure correct startup order.
- Installed and integrated a wait-for-it script inside the Django service.
- Rebuilt and validated the entire setup to confirm proper output.
- Ensured migrations, DB connectivity, and routing work end-to-end.

---

## Learnings
- Even small naming mismatches between services can crash the entire setup.
- MySQL often needs extra time to initialize, especially on first startup.
- Health checks significantly improve reliability in container orchestration.
- NGINX requires exact backend service names for upstream routing.
- Adding wait scripts prevents Django from failing prematurely.
- Logs are the fastest way to identify which container is blocking the workflow.

## Tags
DevOps, Docker, Django, NGINX, MySQL, Multi-Container, Troubleshooting

