#!/bin/bash

# Script to check internet connection

echo "Checking internet connection"

# Try to ping google DNS server
if ping -c 1 8.8.8.8 > /dev/null 2>&1; then
	echo "You are connected to the internet"
else
	echo "No internet connection detected"

fi
