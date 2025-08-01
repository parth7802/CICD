#!/bin/bash
set -e

echo "Running ApplicationStop script..."

# Optional: Stop Apache to avoid conflicts or update
systemctl stop httpd

# Optional cleanup
echo "Cleaning up old logs..."
rm -f /var/log/httpd/access_log
rm -f /var/log/httpd/error_log
