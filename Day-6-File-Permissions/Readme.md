# Day 6 — File Permissions & Archiving  

Today’s focus was on **managing permissions, ownership, and archiving files in Linux**.  

---

## Commands Practiced
- `umask` → Check default permissions for new files/folders  
- `ls -l` → List file details and permissions  
- `chmod` → Change file permissions  
- `chown` → Change file ownership  
- `chgrp` → Change group ownership  
- `zip`, `gzip`, `gunzip` → Compress and decompress files  
- `tar`, `untar` → Archive and extract files  

---

## Real-World Scenario
1. Created a project directory for logs.  
2. Adjusted file permissions with `chmod` to restrict access.  
3. Changed ownership and group using `chown` & `chgrp` for collaboration.  
4. Compressed logs using `gzip` and tested decompression with `gunzip`.  
5. Archived the project directory with `tar` and extracted it back.  

---

## Key Learnings
- Correct permissions = secure & collaborative environment.  
- Archiving (tar/gzip) is essential for **backups, migrations, deployments**.  
- These commands form the **foundation for production file management**.  

---

