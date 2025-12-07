# Day 70 – Creating Kubernetes Resources Using YAML Manifests

## Overview
Today I learned how to create Kubernetes resources such as namespaces and pods using YAML manifest files. This method is more scalable and aligns with best practices used in real-world DevOps environments.

## What I Learned
- Deleted the previously created nginx namespace to start fresh.
- Created a folder named `nginx` to store all manifest files.
- Wrote a namespace manifest file: `namespace.yml`.
- Created the namespace using:
  kubectl apply -f namespace.yml
- Wrote a Pod manifest file: `pod.yml`.
- Created the Pod using:
  kubectl apply -f pod.yml
- Accessed the Pod shell using:
  kubectl exec -it pod/nginx-pod -n nginx -- bash

## Key Concepts
- YAML manifests define Kubernetes resources in a declarative format.
- `kubectl apply -f` converts YAML definitions into actual resources.
- Folder structure helps organize configuration files.
- Declarative manifests make deployments reusable and version-controlled.

## Hands-on Commands Used
- kubectl apply -f namespace.yml  
- kubectl apply -f pod.yml  
- kubectl exec -it pod/nginx-pod -n nginx -- bash  

