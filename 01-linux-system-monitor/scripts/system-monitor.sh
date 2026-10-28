#!/bin/bash

echo "=================================="
echo "       LINUX SYSTEM MONITOR"
echo "=================================="

echo ""
echo "Date and Time:"
date

echo ""
echo "System Uptime:"
uptime

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "Disk Usage:"
df -h

echo ""
echo "Running Processes:"
ps aux | head -n 6

echo ""
echo "=================================="
echo "       MONITORING COMPLETE"
echo "=================================="