# Day 48 – Multi-Stage Docker Build

## Overview
Today’s learning was focused on Multi-Stage Docker Builds, an essential optimisation technique used to reduce image size and separate build dependencies from runtime requirements.

My earlier Docker builds were consuming large amounts of space because the full Python base image was being downloaded every time, resulting in image sizes close to 1 GB. However, Python is required only during package installation, not during application runtime.

Multi-stage builds solve this by using a heavy image for building and a lightweight image for running.

---

## What I Did Today
- Learnt why Docker images become large during repeated builds.
- Understood the concept of build stages inside a single Dockerfile.
- Used one stage for installing and preparing dependencies.
- Used a second, much smaller stage as the runtime environment.
- Copied only the necessary installed packages from the build stage into the runtime stage.
- Successfully reduced the image size from around 1 GB to approximately 142 MB.

---

## Learnings
- Multi-stage builds significantly reduce Docker image size.
- Build environments and runtime environments should be separated for efficiency.
- Using lightweight images (like slim variants) in the final stage improves performance and reduces security risks.
- This method is widely used in real production pipelines.

---

## Next Steps
- Explore how multi-stage builds work with Node.js, Java, and Go applications.
- Learn advanced Dockerfile optimisation techniques.
- Begin integrating multi-stage builds into CI/CD pipelines.

---

## Tags
DevOps, Docker, Multi-Stage-Build, Image-Optimisation, Containers

