# Day 22 | DevOps Journey — Networking and Load Balancing

## Overview
After a short festive break for Diwali, I resumed my DevOps learning journey by exploring networking fundamentals and load balancing concepts.  
Today's goal was to strengthen my understanding of how requests travel across the network and how traffic is distributed efficiently.

---

## What I Did
- Practiced fundamental network commands:
  - `nslookup` – to check DNS resolution.
  - `ping` – to test connectivity and latency.
  - `traceroute` – to trace the packet route between source and destination.
- Explored how load balancers handle incoming requests in cloud environments.
- Understood the request flow within a networked application setup.

---

## What I Learned About Load Balancing
Here is the typical flow of how a request reaches the backend system:

1. The request first goes through the **Internet Gateway**.  
2. Then, it moves to the **Route Table**, which directs traffic to the correct destination.  
3. The traffic reaches the **Application Load Balancer (ALB)**, which distributes requests across multiple servers for better availability and performance.  
4. When the application needs to access the **Database**, it communicates through the **NAT Gateway**, ensuring secure outbound connectivity.

---

## Key Takeaways
- Tools like `ping`, `nslookup`, and `traceroute` are vital for network troubleshooting.  
- The sequence **Internet Gateway → Route Table → Load Balancer → NAT Gateway → Database** forms a secure and efficient architecture.  
- Networking is the backbone of DevOps, ensuring every microservice and system component stays connected seamlessly.

---

### Hashtags
`#DevOps #Networking #Linux #LoadBalancer #AWS #Cloud #Routing #LearningByDoing`

