# Day 58 — Troubleshooting Website Deployment Issues

## Overview
Today, I focused on troubleshooting my Expense Tracker application, which was deployed via Docker and Nginx on a public domain. The website was not accessible despite the backend running successfully inside the containers.

## What I Did Today
1. Verified that all Docker containers (MySQL, Java App, Nginx) were up and running.
2. Checked logs for the Java application to confirm that the backend was operational.
3. Reviewed Nginx configuration (`default.conf`) for potential misconfigurations.
4. Verified DNS records for the domain and ensured A records were correctly set.
5. Observed website timing out despite healthy container states.
6. Prepared all logs and details for deeper troubleshooting tomorrow.

## Learnings
1. Container health does not guarantee website accessibility.
2. DNS propagation can cause delays in reflecting changes on the public domain.
3. Nginx routing and proxy settings are critical for proper application exposure.
4. Systematic debugging requires checking logs at multiple layers (backend, proxy, DNS).
5. Preparation and careful observation help in solving complex deployment issues.

## Tags
#DevOps #Docker #Nginx #Linux #DNS #Deployments #Troubleshooting #Cloud

