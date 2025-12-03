# Day 65 – KIND Cluster Fix and Minikube Setup

## What I Did
- Identified the issue in my KIND cluster setup.
- Removed all stopped Docker containers and recreated the cluster configuration file.
- Successfully created the cluster using a fresh environment.
- Verified cluster information using:
  - kubectl cluster-info --context kind-demo-cluster
  - kubectl get nodes
- Installed required packages for Minikube using apt.
- Downloaded the Minikube binary and placed it in /usr/local/bin.
- Faced an error when checking Minikube version and fixed it by running:
  - docker context use default

## Learnings
- KIND cluster failures often occur due to Docker networking issues.
- Resetting the Docker environment helps resolve cluster creation problems.
- kubectl commands are essential for validating Kubernetes cluster health.
- Minikube requires certain system dependencies before installation.
- Docker context misconfigurations can cause Minikube startup errors.
- Understanding multiple Kubernetes setup methods improves overall cluster knowledge.

