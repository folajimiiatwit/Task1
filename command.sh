#!/bin/bash
# 1. Create React App
npx create-react-app propeller-logo-update
cd propeller-logo-update

# 2. Initialize Git and GitHub Repo
git init
gh repo create propeller-logo-update --public --source=. --remote=origin
git add .
git commit -m "Initial commit"
git push -u origin master

# 3. Create branch update_logo
git checkout -b update_logo

# 4. Replace logo and link (done manually or via script)

# 5. Commit the logo/link updates
git add src/logo.svg src/App.js
git commit -m "Updated logo and link to DirtMate"
git push -u origin update_logo

# 6. Create PR
gh pr create --base master --head update_logo --title "Update logo and link" --body "Replaced default logo with Propeller's DirtMate logo and updated link."

# 7. Merge PR (without approval)
gh pr merge --merge

# 8. Final push (master is now updated)
git checkout master
git pull

# REPO_URL https://github.com/<your-username>/propeller-logo-update
