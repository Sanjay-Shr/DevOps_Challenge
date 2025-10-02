#!/bin/bash
# Day 3 | Deployment Verification Demo

echo "===== DEPLOYMENT VERIFICATION ====="

echo "Total files in NEW deployment:"
find /var/www/html | wc -l

echo "Total files in OLD backup:"
find /var/www/html_backup | wc -l

echo "Files changed (sample differences):"
diff -r /var/www/html /var/www/html_backup | head -10

echo "Disk usage of NEW deployment:"
du -sh /var/www/html

echo "Disk usage of OLD backup:"
du -sh /var/www/html_backup

echo "Recently modified files in NEW deployment:"
ls -ltr /var/www/html | tail -5

echo "===== VERIFICATION COMPLETE ====="
