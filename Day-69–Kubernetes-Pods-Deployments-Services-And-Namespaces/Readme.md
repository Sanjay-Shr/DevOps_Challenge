# Day 69 – Kubernetes Pods, Deployments, Services And Namespaces

## Overview
Today I learned how Docker containers run inside Kubernetes using Pods, Deployments, and Services. I also understood the role of Namespaces in isolating workloads and performed hands-on practice with NGINX.

## What I Learned
- A Docker container cannot run independently in Kubernetes. It always runs inside a Pod.
- Kubernetes provides auto healing and auto scaling using Deployments.
- Services expose Deployments and Pods to external users.
- Workflow for any application: **Container → Pod → Deployment → Service**.
- Namespaces group and isolate resources so that workloads do not interfere with each other.
- `kubectl get namespaces` shows all available Kubernetes namespaces.
- `kubectl get pods -n kube-system` displays system-related running components.

## Hands-on Practice
- Created a new namespace using:  
  `kubectl create ns nginx`
- Verified namespaces using:  
  `kubectl get namespace`
- Attempted to run NGINX Pod in default namespace, then deleted it.
- Created the NGINX Pod inside the correct namespace using:  
  `kubectl run nginx --image=nginx -n nginx`
- Verified the Pod status using:  
  `kubectl get pods -n nginx`

## Key Takeaways
- Kubernetes organizes workloads using logical groups called Namespaces.
- Pods are the smallest runnable units in Kubernetes.
- Deployments ensure availability, rollout updates, and auto healing.
- Services expose applications to the outside network.
- Proper namespace management avoids resource conflicts.
