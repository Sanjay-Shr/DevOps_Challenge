#### Day 12 — Git Hooks & GitHub Actions

Today was all about exploring automation in Git — both locally (with Git Hooks) and remotely (with GitHub Actions). It was a really interesting session where I got to see how code quality checks can be automated even before pushing code!

#### Git Hooks — Local Automation

- Used `ls -a` to view all hidden files and navigated into the `.git/hooks` folder.
- Created a `pre-commit` file inside `.git/hooks` — this hook runs automatically before every commit.
- Created a small `demo.py` file with a few intentional issues.
- Installed `flake8` and ran it manually to see the code issues.
- Linked the `pre-commit` hook so that every time I commit, it automatically checks the code using `flake8`.
- When I tried committing, the pre-commit hook triggered and stopped my commit until I fixed the code — it worked perfectly!

#### GitHub Actions — Cloud-side Automation

- Moved to **GitHub Actions** to try automation on the remote side.
- Opened the **Actions** tab on GitHub and selected the **Pylint workflow**.
- Committed the `pylint.yml` workflow file to the repository.
- As soon as I pushed, GitHub Actions automatically ran a lint check on my Python code.
- It flagged errors in my code and re-ran the checks after every commit — automation in full action.

 **Key Takeaway:**
Git Hooks handle automation **before committing code locally**, while GitHub Actions ensures automation **after pushing to GitHub**.  
Together, they make sure every line of code follows quality standards before deployment.

