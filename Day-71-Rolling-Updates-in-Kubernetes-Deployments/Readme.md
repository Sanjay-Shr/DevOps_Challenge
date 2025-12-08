# Day 71 – Rolling Updates in Kubernetes Deployments

## Overview
Today I learned how rolling updates work in Kubernetes Deployments and how Kubernetes updates Pods gradually while ensuring the application stays available.

## What I Learned
- Updated my existing NGINX Deployment using:
  kubectl set image deployment/nginx-deployment -n nginx nginx=1.28
- Encountered an ImagePullError due to incorrect syntax.
- Corrected the command using:
  kubectl set image deployment/nginx-deployment -n nginx nginx=nginx:1.28
- Observed that not all Pods restart at the same time.
- Noticed that some Pods remained running while others were updated.
- Understood that this gradual Pod replacement is the rolling update strategy.

## Key Concepts
- Rolling updates ensure minimal or zero downtime during Deployment updates.
- Kubernetes updates Pods in batches while maintaining a minimum number of available replicas.
- Pod states (Running, Terminating, ContainerCreating) help track update progress.
- Correct image version syntax is important when updating Deployments.

## Hands-on Commands Used
- kubectl set image deployment/nginx-deployment -n nginx nginx=1.28  
- kubectl set image deployment/nginx-deployment -n nginx nginx=nginx:1.28  
- kubectl get pods -n nginx 
