# Day 62 – Understanding Monolithic vs Microservices and Kubernetes Architecture

## What I Learned Today

### 1. Monolithic Architecture  
- Entire application is built as a single large unit.  
- All services like login, signup, dashboard, and backend logic are tightly coupled.  
- If one functionality fails, the entire application gets impacted.  
- Updating or scaling one part requires updating the entire application.  
- Harder to maintain, scale, and deploy in modern environments.

### 2. Microservices Architecture  
- Application is broken into multiple small, independent services.  
- Each service runs in its own container or isolated environment.  
- If one service fails, other services continue to function.  
- Easy to scale specific services independently.  
- Faster updates and deployments.  
- Ideal for cloud-native and container-based systems.

### 3. Introduction to Kubernetes  
- Kubernetes is an orchestration tool used to manage multiple containers at scale.  
- Ensures auto-scaling, auto-healing, load balancing, and efficient resource usage.  
- Helps manage distributed microservices reliably.

### 4. Kubernetes Node Architecture  
#### Master Node  
- **API Server**: Central communication component; all operations pass through it.  
- **Scheduler**: Decides where pods should run on worker nodes.  
- **etcd**: Key-value store that contains all cluster information.  
- **Controller Manager**: Ensures the cluster state matches the desired state.

#### Worker Node  
- **Kubelet**: Ensures pods and containers are running smoothly.  
- **Service Proxy (kube-proxy)**: Handles network rules and routing for accessing pods.  
- **Pods**: Smallest execution unit in Kubernetes; run containers.

### 5. Container Networking  
- Nodes communicate with each other using container network interface (CNI) plugins.  
- Common CNI plugins include Calico, Weave Net, and Flannel.  
- Ensures communication between worker nodes and pods across the cluster.

### 6. kubectl  
- Command-line tool to interact with Kubernetes.  
- Used to deploy, manage, and inspect cluster resources.  
- Communicates directly with the API Server.

## Key Takeaways  
- Monolithic apps are simple but difficult to scale.  
- Microservices support reliability, scalability, and independent deployments.  
- Kubernetes architecture is designed for managing distributed systems.  
- API Server and etcd are the backbone of Kubernetes cluster management.  
- Kubelet and kube-proxy ensure pods run and communicate correctly.  
- CNI networks enable multi-node pod communication.

