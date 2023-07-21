#!/bin/bash

# Get free disk space information
free_disk_space=$(df -h / | awk 'NR==2 {print $4}')

# Create a temporary HTML file with the correct disk space value
cat /usr/share/nginx/html/devops.html | sed "s|{{FREE_DISK_SPACE}}|$free_disk_space|g" > /tmp/devops.html

# Move the temporary HTML file to the original location
mv /tmp/devops.html /usr/share/nginx/html/devops.html

nginx -g "daemon off;"
