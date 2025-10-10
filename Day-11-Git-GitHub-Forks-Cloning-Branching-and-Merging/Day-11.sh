#!/bin/bash

# Day 11 - Git/GitHub Practice

# Clone a repository (example repo URL)
git clone https://github.com/username/repo.git

# Move inside repo
cd repo

# Check existing branches
git branch

# Create and switch to new branch 'dev'
git checkout -B dev

# Add a new folder/file
mkdir day11_practice
echo "# Day 11 Practice" > day11_practice/README.md

# Stage and commit changes
git add .
git commit -m "Day 11: Added practice folder and README.md"

# Push branch to remote
git push origin dev

# Switch back to main
git checkout main

# Fetch branches from remote
git fetch

# Pull latest changes from main
git pull origin main

# View commit history
git log --oneline

