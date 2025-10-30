# Day 31 – Jenkins Agent Integration and Pipeline Execution

## Overview
On Day 31, I continued my Jenkins automation learning by integrating a remote Linux agent with Jenkins.  
I successfully configured the pipeline to execute on the agent node instead of the main controller and began working on a new project, *DjangoCICD*, linked to GitHub.

## What I Did
- Modified an existing Jenkins pipeline to use the agent labeled **“mango”**.  
- Verified that pipeline-created files and folders were generated directly on the agent system.  
- Created a new Jenkins item named *DjangoCICD* and connected it with a GitHub project.  
- Enabled **GitHub hook trigger for GITScm polling** for automatic build triggers upon commits.  
- Iteratively tested the pipeline, analyzing build progress and timing through **Stage View**.  

## Learnings
- Jenkins agents help distribute build loads, allowing scalable automation setups.  
- GitHub webhooks provide seamless continuous integration without manual triggers.  
- Stage View is essential for understanding build stages, timing, and failure points.  

## Next Steps
- Refine the *DjangoCICD* pipeline for a fully functional CI/CD workflow.  
- Implement automated testing and deployment stages for improved delivery.  

---
**Tags:** `Jenkins` `GitHub` `CICD` `DevOps` `LinuxAgent`

