# Day 64 – Creating a Custom Kubernetes Cluster Configuration with KIND

## Overview
Today I worked on defining a Kubernetes cluster configuration for KIND (Kubernetes IN Docker).  
The goal was to create a multi-node cluster using a custom YAML configuration file.

## What I Did Today
- Created a `config.yml` file to define a KIND Kubernetes cluster.
- Added:
  - One control-plane node.
  - Three worker nodes.
- Added port mappings for:
  - Port 80 (HTTP)
  - Port 443 (HTTPS)
- Attempted to create the cluster using the command:
  - kind create cluster --name=demo-cluster --config=config.yml
- Faced an error during cluster creation and will troubleshoot this tomorrow.

## Learnings
- KIND allows defining full Kubernetes topology using a YAML config.
- Control-plane and worker nodes can be easily set up locally.
- Port mappings help expose service ports from KIND to the host.
- Errors during cluster creation help in understanding cluster bootstrapping.

## Tags
DevOps, Kubernetes, KIND, Docker, Cluster Configuration, Learning

