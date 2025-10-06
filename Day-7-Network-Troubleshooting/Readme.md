# Day 7 | Network Troubleshooting & Connectivity Checks

## Objective
Today I practiced network monitoring and troubleshooting commands commonly used by DevOps engineers and SysAdmins. Since I don’t have access to a live production server, I simulated network scenarios on my local Linux machine.

---

## What I Learned / Practiced

### 1. Interface & Link Status
- Checked all network interfaces: `ip addr show`, `ifconfig -a`
- Verified if network link is active: `ifplugstatus <interface>`
- Brought interfaces up/down for troubleshooting: `sudo ip link set <interface> up/down`

### 2. Active Connections & Listening Ports
- Listed TCP/UDP listening ports: `sudo netstat -tulnp`  
- Modern alternative: `sudo ss -tulnp`
- Verified which processes are using which ports.

### 3. Connectivity Testing
- Tested reachability of hosts: `ping <host>`  
- Traced network routes: `traceroute <host>`, `tracepath <host>`  
- Checked DNS resolution: `nslookup <domain>`, `dig <domain>`  

### 4. Service Port Testing
- Checked if services are running and ports are open: `nc -zv <host> <port>`  
- Tested local SSH, HTTP, or other services.

### 5. Network Troubleshooting Flow
1. Identify interfaces and check status.  
2. Check listening ports and active connections.  
3. Simulate issues (bring interface down/up).  
4. Verify connectivity and route to hosts.  
5. Check DNS, ARP, and routing tables if needed.  

---

## Commands Practiced

```bash
ip addr show
ifconfig -a
ifplugstatus <interface>
sudo ip link set <interface> up/down
sudo netstat -tulnp
sudo ss -tulnp
ping <host>
traceroute <host>
tracepath <host>
nslookup <domain>
dig <domain>
nc -zv <host> <port>

