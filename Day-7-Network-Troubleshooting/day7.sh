
---

### **network_troubleshoot.sh sample script**

```bash
#!/bin/bash

echo "===== SYSTEM & NETWORK INFO ====="
uname -a
hostname
ip addr show
ifconfig

echo "===== MONITOR ACTIVE CONNECTIONS ====="
netstat -tulpn
ss -tulpn

echo "===== PING & TRACE ====="
ping -c 4 127.0.0.1
traceroute 127.0.0.1
tracepath 127.0.0.1
mtr -c 4 127.0.0.1

echo "===== DNS CHECK ====="
nslookup google.com
dig google.com
host google.com

echo "===== PORT CHECK ====="
nc -zv 127.0.0.1 22

echo "===== INTERFACE STATUS ====="
iwconfig
ifplugstatus wlo1
sudo ip link set wlo1 down
sudo ip link set wlo1 up

