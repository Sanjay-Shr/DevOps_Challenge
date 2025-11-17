# Day 49 - Monitoring and Logging in Docker Using nohup

## Overview
Today I explored the basics of monitoring and logging for Docker containers using the `nohup` command. This helps capture logs continuously in the background and prevents losing output if the terminal session closes.

## What I Did
- Observed that checking logs using `docker logs <container_id>` repeatedly is inefficient when debugging.
- Learnt that `nohup` is used to run processes in the background and store all output in a file.
- Started my Flask application container.
- Faced the issue of repeatedly running log commands to view the latest updates.
- Used the command `"nohup docker attach 74e7e186a8b3 &"` to capture live container logs.
- Triggered multiple endpoints such as:
  - `http://127.0.0.1/thanos`
  - `http://127.0.0.1/error`
  - `http://127.0.0.1/laptop`
- Verified that new logs were being recorded smoothly inside the **nohup.out** file.

## Learnings
- `nohup` helps maintain process continuity even after closing terminals.
- Continuous log capturing is essential for debugging real-time issues.
- Using `nohup` avoids re-running log commands multiple times.
- Acts as a simple logging mechanism before moving into advanced tools like ELK Stack or Prometheus.

## Tags
DevOps, Docker, Monitoring, Logging, nohup, Flask, Containers, Troubleshooting

