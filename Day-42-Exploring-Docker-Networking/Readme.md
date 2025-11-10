# Day 42 – Exploring Docker Networking

## **Overview**
On Day 42, I focused on understanding Docker Networking — a key part of how containers communicate and share data.  
This concept forms the foundation for orchestrating multi-container systems and managing connectivity between services.

---

## **What I Did**
- Studied the seven main types of Docker networks:
  - Host
  - Bridge (default)
  - User-defined Bridge (Custom)
  - None
  - MACVLAN
  - IPVLAN
  - Overlay  
- Ran `docker network ls` to list the existing networks (Host, Bridge, None).  
- Created a new custom bridge network using `docker network create mynetwork -d bridge`.  
- Understood how user-defined networks allow better control over container connectivity and isolation.  

---

## **Learnings**
- **Bridge** is the default Docker network used for most single-host communication.  
- **User-defined Bridge** offers enhanced control and simplified DNS-based container communication.  
- **Host** allows containers to share the host system’s network stack for performance.  
- Networking provides the foundation for scaling Docker-based applications and linking services securely.  

---

## **Next Steps**
- Practice connecting multiple containers using a user-defined bridge network.  
- Explore Overlay networking and understand how it works in multi-host Docker setups.

---

## **Tags**
`DevOps` `Docker` `Networking` `BridgeNetwork` `Containerization` `LearningInPublic`

