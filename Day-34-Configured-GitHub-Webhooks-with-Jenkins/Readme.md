# Day 34 – Successfully Configured GitHub Webhooks with Jenkins

## Overview
On Day 34, I achieved a key milestone by successfully integrating GitHub Webhooks with Jenkins.  
This enables automatic builds and deployments whenever code is pushed to GitHub — a core part of any CI/CD pipeline.

## What I Did
- Faced multiple issues while connecting Jenkins (running locally) with GitHub Webhooks.  
- Installed **ngrok** to securely expose my local Jenkins server to the internet.  
- Created and linked my ngrok account, generating a public forwarding URL.  
- Fixed the **403 “No valid crumb was included in the request”** error by updating Jenkins CSRF (Crumb Issuer) security settings.  
- Reconfigured the webhook in GitHub to use the ngrok URL and validated the connection.  
- Successfully received the **200 OK** response, confirming that Jenkins is now connected to GitHub through the webhook.

## Learnings
- Jenkins and GitHub Webhooks rely on proper endpoint exposure and CSRF configuration.  
- Ngrok is highly useful for local Jenkins testing and webhook debugging.  
- Understanding Jenkins security settings (Crumb Issuer) helps prevent integration issues.  
- Successful webhook integration is the bridge between code commits and automated builds.  

## Next Steps
- Automate complete CI/CD pipelines using webhook triggers.  
- Add pipeline stages to build, test, and deploy upon each GitHub commit automatically.  

---
**Tags:** `Jenkins` `GitHub` `Webhooks` `ngrok` `CICD` `Automation` `DevOps`

