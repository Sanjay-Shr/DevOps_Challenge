# Day 66 – Learning Kubeadm and Multi-Node Kubernetes Setup

## What I Did
- Learned the purpose of kubeadm for creating production-like Kubernetes clusters.
- Studied how multiple physical or cloud machines are required for master and worker nodes.
- Understood the role of containerd as the container runtime for Kubernetes.
- Reviewed why swap must be disabled before installing Kubernetes.
- Learned about exposing port 6443 for Kubernetes API server communication.
- Studied required kernel modules and system-level configurations.
- Explored kubeadm installation steps on all nodes.
- Learned which commands are executed only on the master node.
- Understood kubeadm init for cluster initialization.
- Reviewed how to join worker nodes using the generated join command.
- Set up kubeconfig for non-root cluster administration.
- Studied the installation of network plugins.
- Understood pre-flight checks required for worker nodes.

## Learnings
- Kubeadm provides complete control over multi-node Kubernetes installations.
- containerd is the preferred runtime and runs behind Kubernetes.
- System preparation (swap, kernel modules, ports) is essential before kubeadm setup.
- Master and worker nodes have separate responsibilities.
- kubeadm init and kubeadm join form the foundation of manual cluster creation.
- Network plugins are required for pod networking.
- Pre-flight checks ensure worker nodes meet Kubernetes requirements.

