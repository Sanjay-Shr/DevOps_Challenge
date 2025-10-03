---

### **cpu_memory_check.sh**  

```bash
#!/bin/bash

echo "===== CPU & Memory Troubleshooting ====="

# Step 1: Simulate high CPU usage
echo "Starting a CPU-intensive process..."
while true; do :; done &
CPU_PID=$!
echo "CPU hog process started with PID: $CPU_PID"

# Wait a moment for the process to start
sleep 2

# Step 2: Monitor CPU usage
echo "CPU usage snapshot:"
top -b -n1 | head -20

# Step 3: Verify process details
echo "Details of the CPU-intensive process:"
ps -p $CPU_PID -o pid,ppid,cmd,%cpu,%mem

# Step 4: Kill the process
echo "Terminating CPU hog process..."
kill -9 $CPU_PID

# Step 5: Check system health
echo "CPU usage after stopping the process:"
top -b -n1 | head -20

echo "Disk usage:"
df -h

echo "Directory sizes:"
du -sh *

echo "Memory usage:"
free -m

echo "System statistics (vmstat 1 5):"
vmstat 1 5
