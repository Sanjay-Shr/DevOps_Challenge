# Day 40 | DevOps Journey — Learning Docker Pull Command & Building a Custom Java App Image

## Overview

On Day 40 of my DevOps journey, I focused on learning how to use the `docker pull` command and worked on building my first custom Docker image for a simple Java application. It was a productive day filled with learning about Docker images, Dockerfiles, and troubleshooting container builds.

## What I Did

1. **Pulled an Image from Docker Hub:**
   I started by using the `docker pull` command to pull an image directly from Docker Hub, which is essential for fetching pre-built images for various technologies.
   
2. **Cloned a Simple Java Program:**
   I cloned a simple Java application and wrote a custom `Dockerfile` to containerize it. The goal was to understand the steps involved in creating a reproducible environment inside a container.

3. **Created a Dockerfile:**
   I wrote my own `Dockerfile` to build the custom image. This file contains instructions to install the necessary environment and dependencies to run the Java application inside a container.

4. **Built and Ran the Image:**
   After completing the Dockerfile, I built the image using `docker build` and ran the container successfully. Initially, I faced some errors related to the base JDK image, but after troubleshooting and modifying the `Dockerfile`, I managed to build and run the Java application inside the container.

## Key Takeaways

1. **Docker Pull Command:**
   The `docker pull` command is essential for fetching pre-built images from Docker Hub, saving time and effort when working with commonly used software environments.
   
2. **Dockerfiles are Crucial:**
   A `Dockerfile` is a blueprint for creating Docker images. It defines the environment for the application, specifying all the steps needed to set up the container.

3. **Troubleshooting is Key:**
   During the process, I encountered issues with the base JDK image. Troubleshooting these errors helped me understand Docker's build process more deeply, especially how the environment is set up inside containers.

4. **Understanding Docker's Workflow:**
   The connection between Dockerfile → Image → Container became clearer to me. Dockerfiles contain step-by-step instructions for building an image, which is then used to create and run containers.

## Conclusion

It was a great learning experience today! Understanding how to pull images, create Dockerfiles, build custom images, and run containers has given me a much deeper insight into the containerization process. Each small issue I encountered helped me understand the intricacies of Docker and containerized environments.

## Question

What was your first experience with building a custom Docker image? Did you run into any surprises during the process?

---

#DevOps #Docker #LearningInPublic #Cloud #Containerization #Dockerfile #JavaApp

