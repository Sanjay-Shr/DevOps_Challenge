# Day 41 – Building a Flask Application with Docker

## **Overview**
Today I worked on containerizing a simple Python Flask application using Docker. The goal was to understand how to build and run a web app inside a container and expose it properly using port mapping.

---

## **What I Did**
- Cloned a demo Flask app from a GitHub repository.  
- Created a Dockerfile for the application (screenshot attached).  
- Built the Docker image and ran the container.  
- Faced one issue where I forgot to map the host port to the container port, which initially prevented access to the app.  
- After correcting the port mapping, the application worked perfectly and was accessible via the browser.

---

## **Learnings**
- Docker makes it easy to package applications and dependencies together for seamless deployment.  
- Port mapping (`-p host_port:container_port`) is essential to make web apps accessible outside the container.  
- Understanding the role of each Dockerfile instruction helps in troubleshooting build or runtime errors.  
- Flask is a great lightweight framework for demonstrating containerization workflows.

---

## **Next Steps**
- Learn how to push this custom Flask image to Docker Hub.  
- Explore Docker Compose for managing multi-container applications.

---

## **Tags**
`DevOps` `Docker` `Flask` `Python` `Containerization` `Dockerfile` `LearningInPublic`

