#!/bin/bash

while true; do
    echo "Checking for existing npm processes..."
    
    # Find and kill any running npm process
    pkill -f "npm start"
    
    # Ensure all processes are terminated before proceeding
    sleep 5  

    echo "Starting npm..."
    npm start

    echo "Process completed. Waiting 12 hours before restarting..."
    
    # Wait for 12 hours before restarting
    sleep 43200  # 12 hours in seconds
done
