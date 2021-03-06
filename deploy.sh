#!/bin/bash

#git rm -r public
#rm -rf .git/modules/public
#git submodule add -b master git@github.com:ivanpaulovich/ivanpaulovich.github.io.git public

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project.
#hugo # if using a theme, replace with `hugo -t <YOURTHEME>`
hugo -t hugo-lamp

# Go To Public folder
cd public
# Add changes to git.
git add .

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master

# Come Back up to the Project Root
cd ..