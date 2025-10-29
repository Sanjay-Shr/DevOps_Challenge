# Day 30 – Jenkins Agent Configuration via SSH

## Overview
On Day 30, I focused on configuring a Linux-based Jenkins agent and connecting it to the Jenkins master using SSH authentication. This setup enables Jenkins to distribute workloads across multiple machines, improving scalability and efficiency in CI/CD pipelines.

## Tasks Completed
- Installed Java 21 on the Linux virtual machine to support Jenkins automation.  
- Generated a new SSH key pair for secure agent-master communication.  
- Added the public key to the agent for authorization.  
- Created a new Jenkins node and configured its launch method as “Launch agent via SSH.”  
- Added credentials using the private key from the `~/.ssh` directory.  
- Verified the connection between the Jenkins master and agent to ensure that the remoting.jar started successfully and the node came online.

## Key Learnings
- Understood how SSH-based Jenkins agents work.  
- Learned how to securely configure and connect multiple nodes in Jenkins.  
- Gained insight into distributed builds and remote agent management.

## Next Steps
Next, I will explore automating job triggers between GitHub and Jenkins agents to execute build pipelines dynamically.

---
**Tags:** `Jenkins` `SSH` `DevOps` `Automation` `Linux` `Java` `CICD`

