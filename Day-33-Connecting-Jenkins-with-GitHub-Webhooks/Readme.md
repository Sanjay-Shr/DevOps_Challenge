# Day 33 – Connecting Jenkins with GitHub Webhooks

## Overview
On Day 33, I focused on integrating Jenkins with GitHub Webhooks to automate build and deployment triggers.  
The aim was to ensure Jenkins automatically detects and builds whenever a new commit or change is pushed to the GitHub repository.

## What I Did
- Configured Jenkins to use GitHub Webhooks for automated build triggers.  
- Created a new webhook in GitHub with the Jenkins payload URL and appropriate content type.  
- Verified repository permissions and Jenkins endpoint accessibility.  
- Investigated why GitHub was unable to deliver webhook events to Jenkins.  
- Reviewed Jenkins logs and webhook response codes for error analysis.

## Learnings
- Jenkins must be publicly accessible or have a valid endpoint for GitHub Webhooks to communicate successfully.  
- Proper GitHub token and Jenkins configuration are essential for secure webhook integration.  
- Understanding webhook delivery logs helps pinpoint network or permission issues.

## Next Steps
- Resolve the GitHub webhook connectivity issue.  
- Test the complete automation flow where code changes trigger Jenkins builds automatically.  
- Document the working configuration for future reference.

---

**Tags:** `Jenkins` `GitHub` `Webhooks` `CICD` `Automation` `DevOps`

