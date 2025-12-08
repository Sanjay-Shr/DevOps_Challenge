# Day 71 – ReplicaSets, StatefulSets, and Deployments in Kubernetes

## Overview
Today I learned how Kubernetes manages multiple Pods using ReplicaSets, StatefulSets, and Deployments. I also performed hands-on troubleshooting when one of the Pods failed due to network issues.

## What I Learned
- ReplicaSets create multiple identical Pods and apply updates to all Pods at once.
- StatefulSets maintain ordered Pod identities such as pod-0, pod-1, pod-2.
- Deployments use ReplicaSets but perform rolling updates to ensure zero downtime.
- Created a Deployment.yml file to test replication and scaling.
- One Pod got stuck in ImagePullPolicy due to network failure on the third worker node.
- Checked Pod logs to identify connectivity issues.
- Restarted services: network manager, containerd, and kubelet.
- Restarted the affected worker node to restore networking.
- Deleted the failed Pod and verified Kubernetes recreated it automatically.
- Scaled the Deployment to 5 replicas and confirmed all Pods were running.

## Commands Used
- kubectl apply -f Deployment.yml
- kubectl logs <pod-name>  
- systemctl restart NetworkManager  
- systemctl restart containerd  
- systemctl restart kubelet  
- kubectl delete pod <pod-name>  
- kubectl get pods  
- kubectl scale deployment nginx-deploy --replicas=5  

## Key Concepts
- ReplicaSets ensure the desired number of Pod copies.
- StatefulSets preserve Pod identity and order.
- Deployments provide rolling updates and version control.
- Kubernetes self-heals when Pods fail after fixing underlying issues.
