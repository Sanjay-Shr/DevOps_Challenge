# Day 72 – ReplicaSets and DaemonSets in Kubernetes

## Overview
Today I practiced working with ReplicaSets and DaemonSets and compared their behavior with Deployments.

## What I Learned
- ReplicaSet YAML is almost identical to a Deployment YAML except for:
  - kind: ReplicaSet
  - metadata changes
- ReplicaSets ensure that a fixed number of Pods are always running.
- Deployments are more advanced because they support rolling updates.
- ReplicaSets can maintain Pod count but cannot perform controlled updates.

## DaemonSets
- DaemonSets ensure that at least one Pod runs on each node.
- Replica count is not required in DaemonSets.
- DaemonSets automatically create one Pod per node.
- Useful for node-level tasks like monitoring, logging, and networking agents.

## Hands-on Steps
- Created ReplicaSet YAML and applied it using:
  kubectl apply -f replicaset.yml
- Created DaemonSet YAML and applied it using:
  kubectl apply -f daemonset.yml
- Verified Pod behavior across nodes using:
  kubectl get pods -o wide

## Key Concepts
- ReplicaSets maintain Pod availability but lack update strategies.
- Deployments extend ReplicaSets to provide rolling updates.
- DaemonSets are designed for node-specific workloads.

