# Day 23 | DevOps Challenge — Load Balancers Explained

## Overview
Today, I focused on understanding how load balancers manage and distribute network traffic to ensure high availability, scalability, and fault tolerance. This concept is critical in real-world DevOps environments where multiple servers handle web requests simultaneously.

## What I Did
1. Learned how load balancers distribute incoming traffic among servers to prevent overload.
2. Studied the types of AWS Load Balancers:
   - **Application Load Balancer (ALB):** Works on Layer 7 (Application Layer) and handles HTTP/HTTPS traffic.
   - **Network Load Balancer (NLB):** Works on Layer 4 (Transport Layer) and handles TCP, UDP, and TLS.
   - **Classic Load Balancer (CLB):** Supports both Layer 4 and Layer 7 and handles HTTP/HTTPS, TCP, and SSL.
3. Understood key concepts like **Listeners**, **Target Groups**, and **Traffic Routing**.
4. Analyzed how traffic flows: **Internet Gateway → Route Table → Application → NAT Gateway → Database**.

## Key Takeaways
- Load balancers optimize performance and improve reliability.
- Each load balancer type operates at different OSI layers for specific traffic needs.
- Proper configuration ensures fault tolerance and better resource utilization.
- Understanding load balancing is fundamental for designing scalable architectures.

