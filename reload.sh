#!/bin/bash

git fetch origin main
git pull origin main

# Check if pull was successful before restarting
if [ $? -eq 0 ]; then
    sudo systemctl restart portfolio_site
    sudo systemctl status portfolio_site
else
    echo "Git pull failed"
    exit 1
fi
