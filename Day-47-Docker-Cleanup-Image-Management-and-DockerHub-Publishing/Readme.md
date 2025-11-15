# Day 47 — Docker Cleanup, Image Management, and DockerHub Publishing

## Overview
On Day 47, I focused on learning how to clean unused Docker resources, manage images, and work with DockerHub for pushing and pulling container images. These steps help maintain a healthy Docker environment and ensure consistent behavior across multiple systems.

---

## What I Did

- **Cleaned up unused Docker resources** using:  
  `docker system prune`  
  This command removes stopped containers, unused networks, dangling images, and build cache.

- **Removed specific images** using:  
  `docker rmi <image ID>`

- **Listed all image IDs** using:  
  `docker images -aq`

- **Removed all images forcefully** using:  
  `docker rmi -f $(docker images -aq)`

- **Tagged my backend image** using:  
  `docker image tag two-tier-flask-app-master-flask:latest sanjayshr944811/two-tier-backend`

- **Pushed the tagged image to DockerHub**:  
  `docker push sanjayshr944811/two-tier-backend:latest`

- **Pulled the image from DockerHub**:  
  `docker pull sanjayshr944811/two-tier-backend:latest`

- **Updated the `docker-compose.yml` file** to pull the image instead of building it locally:

    ```yaml
    image: sanjayshr944811/two-tier-backend:latest
    ```

- **Ran the application** using:  
  `docker compose up`

- **Verified that Docker pulled the image from DockerHub** and executed it successfully.

## Learnings

- `docker system prune` is the fastest way to clean up the Docker environment.
- Proper image tagging is crucial for production deployments.
- DockerHub enables easy distribution of images across different machines.
- Using Docker Compose with registry-based images improves consistency.
- Managing and cleaning images helps avoid build conflicts and storage issues.

