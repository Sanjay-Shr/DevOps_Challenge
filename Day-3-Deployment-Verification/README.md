# Day 3 | DevOps Challenge — Deployment Verification

Today I practiced deployment verification by comparing a new deployment with a backup. Since I didn’t have a real production environment, I created demo folders to simulate the workflow.

## What I did:

1. Counted total files in the new deployment and old backup using find + wc -l
2. Compared individual config files using diff
3. Compared directories recursively using diff -r
4. Checked disk usage using du -sh
5. Listed last 5 modified files in the new deployment using ls -ltr | tail -5

This workflow gave me hands-on experience in deployment verification and basic automation, bridging my learning from Linux commands to practical DevOps tasks.
