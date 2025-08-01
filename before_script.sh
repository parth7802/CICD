#!/bin/bash
set -e

echo "Running BeforeInstall script..."

# Update the instance
yum update -y

# Install Apache if not installed
if ! command -v httpd &> /dev/null; then
  yum install -y httpd
fi

# Enable and start Apache
systemctl enable httpd
systemctl start httpd

# Clean previous deployment (optional)
rm -rf /var/www/html/*
