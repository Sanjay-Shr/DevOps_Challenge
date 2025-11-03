# Day 35 – Implementing Jenkins Shared Libraries for Reusability

## Overview
On Day 35, I implemented Jenkins Shared Libraries to make my pipeline code modular and reusable across multiple projects.  
This allows maintaining common pipeline logic in a single repository and referencing it in any Jenkins job.

## What I Did
- Created a new GitHub repository to host the shared Jenkins library.  
- Added a `vars` directory and created a test file `hello.groovy` for initial validation.  
- Configured the shared library in Jenkins under **Manage Jenkins → Global Trusted Pipeline Libraries**.  
- Linked the library to my existing **DjangoCICD** pipeline project.  
- Faced an initial syntax issue in the Groovy file, corrected it, and re-tested successfully.  
- Verified that the shared library executed correctly, confirming integration and reusability.

## Learnings
- Jenkins Shared Libraries reduce duplication and improve CI/CD maintainability.  
- Groovy syntax and naming conventions inside `vars` are critical for proper library execution.  
- Centralizing reusable functions simplifies large-scale pipeline management.  
- Once configured, libraries can be updated independently without editing every pipeline.

## Next Steps
- Expand the shared library with multiple reusable functions and utility scripts.  
- Integrate library-based steps into all pipeline stages — build, test, and deploy.

---
**Tags:** `Jenkins` `SharedLibrary` `Groovy` `Automation` `DevOps` `CICD`

