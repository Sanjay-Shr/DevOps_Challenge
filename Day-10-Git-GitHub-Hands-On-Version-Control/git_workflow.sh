
---

### **git_workflow.sh**  

```bash
#!/bin/bash
# Day 10 | Git & GitHub Practice Script

# Create project folder
mkdir -p ~/Github_for_devops
cd ~/Github_for_devops

# Create a sample file
echo "print('Hello DevOps')" > testing.py

# Initialize git
git init
git status

# Stage the file
git add testing.py
git status

# Unstage the file
git rm --cached testing.py
git status

# Commit changes
git add testing.py
git commit -m "First commit"

# Simulate file deletion and restore
rm testing.py
git status
git restore testing.py
git status
git commit -m "Committed after restoring the file"

# Add remote repo (replace URL with your repo URL)
git remote add origin <your-repo-URL>
git remote -v

# Push to GitHub
git branch -M main
git push -u origin main

