# Day 36 – Jenkins Role-Based User Management

## Overview
On Day 36, I focused on securing Jenkins by implementing **Role-Based Access Control (RBAC)**.  
This approach ensures that only authorized users have access to specific Jenkins operations, aligning with enterprise-grade security practices.

## What I Did
- Installed the **Role-Based Authorization Strategy** plugin.  
- Changed Jenkins authorization mode to **Role-Based Strategy** under Global Security.  
- Defined user roles such as `admin`, `developer`, and `viewer`, each with specific permissions.  
- Created multiple users and assigned roles accordingly.  
- Logged in as different users to validate role-based permissions.  

## Learnings
- Role-Based Authorization is essential for multi-user Jenkins setups.  
- Assigning minimal permissions to each role enhances security.  
- Jenkins’ plugin system offers flexible role and user management options.  
- Testing with different user accounts helps verify correct access control.  

## Next Steps
- Integrate Jenkins with LDAP or Active Directory for centralized user authentication.  
- Automate role assignment through Jenkins configuration as code.  

---
**Tags:** `Jenkins` `DevOps` `RBAC` `Security` `UserManagement` `Automation`

