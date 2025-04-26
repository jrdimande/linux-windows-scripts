#!/bin/bash

# Show current status
git status
sleep 10

# Add all files
git add .

# Ask commit message
echo "Enter the commit message: "
read message

# Make commit
git commit -m "$message"

# push to the remote repository
git push origin main



