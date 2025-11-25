# Day 57 | Nginx Reverse Proxy + Domain Setup for Expense Tracker App

Today, I worked on extending my Expense Tracker Application by setting up Nginx as a reverse proxy and deploying the application using a custom domain. I first encountered a permission error from MySQL because the MySQL container wasn’t stopped correctly and the system restarted unexpectedly. Fixing the folder permissions resolved the issue. After that, I created the nginx directory, added the necessary configuration files, and debugged a routing issue caused by an incorrect port number. Finally, I configured the DNS A record and successfully deployed the app on a public domain.

## What I Did Today
- Began integrating Nginx reverse proxy for the Expense Tracker project.
- Encountered a MySQL volume permission issue due to an improper shutdown.
- Fixed the permissions for the `mysql-data` directory.
- Created a new `nginx` folder inside the project directory.
- Added `default.conf` and `Dockerfile` for Nginx configuration.
- Faced an issue where Nginx failed to route requests to the backend.
- Found that the proxy_pass port was incorrect (`8000` instead of `8080`).
- Corrected the port configuration and confirmed successful Nginx routing.
- Purchased a new domain for hosting the application.
- Added the DNS A record to point to the server’s public IP.
- Updated the Nginx configuration to include the new domain settings.
- Verified that the application is live on the public website.

## Key Takeaways
- Docker volume permissions need to be handled carefully after system restarts.
- Nginx routing depends heavily on correct port mapping and service names.
- DNS A record configuration is required for exposing apps publicly.
- Reverse proxy debugging strengthens understanding of service networking.
- Good file organization improves maintainability of containerized setups.
- Combining Nginx with Docker is a critical skill for production deployments.
- Domain-based access gives a professional and realistic deployment experience.
