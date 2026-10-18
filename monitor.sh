BASH SCRIPT
#!/bin/bash
########################################
########################################
##Author: Fazhan
##Date:17-10--26
##Version:v1
echo "======================================"
echo "       EC2 SYSTEM MONITOR"
echo "======================================"
echo "Date: $(date)"
echo "Hostname: $(hostname)"
echo

# 1. Display CPU usage information
echo "========== CPU USAGE =========="
top -bn1 | head -n 5
echo

# 2. Display memory usage
echo "========== MEMORY USAGE =========="
free -h
echo

# 3. Display disk usage
echo "========== DISK USAGE =========="
df -h
echo

# 4. Display running services
echo "========== RUNNING SERVICES =========="
systemctl list-units --type=service --state=running --no-pager
echo

echo "========== MONITORING COMPLETE =========="
