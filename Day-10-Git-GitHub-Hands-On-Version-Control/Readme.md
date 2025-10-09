# Day 10 | Git & GitHub Practice

Today I focused on strengthening my Git & GitHub skills by practicing real-world version control workflows locally.  
Since I don’t have access to production servers yet, all commands were executed locally on my laptop.

---

## Workflow Overview

### 1. Created a project folder
 - mkdir -p ~/Github_for_devops
    cd ~/Github_for_devops
### 2. Created a sample Python file
 - echo "print('Hello Devops')" > testing.py
### 3. Initialized Git and checked status
 -  git init
 -  git status
### 4. Practiced staging and unstaging files
 -  git add testing.py           # Stage file
 -  git rm --cached testing.py   # Unstage file
 -  git status
### 5. Committed changes
 -  git add testing.py
 -  git commit -m "First commit"
### 6. Simulated file deletion and restoration
 -  rm testing.py
 -  git status
 -  git restore testing.py
 -  git status
 -  git commit -m "Committed after restoring the file"
### 7. Added remote repository and pushed code
 -  git remote add origin <your-repo-URL>
 -  git remote -v
 -  git branch -M main
 -  git push -u origin main

