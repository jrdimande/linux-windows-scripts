#!/bin/bash

echo "Updating system"

# Update the package list
sudo apt update

# Upgrade installed packages
sudo apt upgrade -y

echo "Update done!"
