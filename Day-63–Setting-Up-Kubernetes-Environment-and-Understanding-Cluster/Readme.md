# Day 63 – Setting Up Kubernetes Environment and Understanding Cluster Types

## What I Learned Today

### 1. kubeadm Cluster
- Used to create Kubernetes clusters manually.
- Requires multiple EC2 instances or physical machines.
- Provides full control over cluster components.
- Commonly used for production-like or self-managed clusters.

### 2. Minikube Cluster
- Creates a Kubernetes cluster inside a local machine.
- Typically single-node.
- Ideal for learning, testing, and small-scale development.
- Easy to install and does not require cloud resources.

### 3. KIND (Kubernetes IN Docker)
- Creates Kubernetes clusters inside Docker containers.
- Lightweight, fast, and easy to reset.
- Suitable for local testing, CI pipelines, and experimentation.
- I installed KIND on my local system today.

### 4. Managed Kubernetes Services
#### EKS (AWS)
- Elastic Kubernetes Service provided by AWS.
- Fully managed control plane.
- Good for large-scale production workloads.

#### AKS (Azure)
- Azure Kubernetes Service.
- Simplifies cluster setup and scaling.
- Integrates well with Azure ecosystem.

#### GKE (Google Cloud)
- Google Kubernetes Engine.
- Known for strong performance and automated operations.
- Ideal for production-level workloads.

## Key Takeaways
- kubeadm provides the highest level of control for cluster creation.
- Minikube is simple and ideal for beginners working on local machines.
- KIND is efficient for development and runs clusters inside Docker.
- Cloud-managed options like EKS/AKS/GKE remove control plane maintenance.
- Selecting the right cluster setup depends on whether you are learning, testing, or deploying in production.

## What I Did Today
- Learned cluster types: kubeadm, Minikube, KIND, and managed services.
- Understood differences between self-managed and cloud-managed clusters.
- Installed KIND on my local machine to begin Kubernetes practice.

