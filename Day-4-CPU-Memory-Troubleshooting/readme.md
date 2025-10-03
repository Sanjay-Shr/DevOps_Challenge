# Day 4 | CPU & Memory Troubleshooting

Today, I practiced how to monitor and troubleshoot high CPU and memory usage on a Linux system.  

Since I don’t have a production server, I simulated a CPU-intensive process using a simple Bash loop. This helped me understand how to spot resource-hogging processes and bring system performance back to normal.

## What I Did

1. **Simulated high CPU usage**  
   Created a background Bash loop to generate CPU load.

2. **Monitored system performance**  
   Used `top` to identify the process consuming the most CPU.

3. **Verified process details**  
   Checked PID, parent process, CPU %, memory %, and command using `ps`.

4. **Stopped the process**  
   Killed the rogue process to restore normal CPU usage.

5. **Checked system health**  
   Used `df`, `du`, `free`, and `vmstat` to confirm CPU, memory, and disk were stable.

## How to Run

```bash
# Make the script executable
chmod +x cpu_memory_check.sh

# Run the script
./cpu_memory_check.sh
