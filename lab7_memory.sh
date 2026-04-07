#!/bin/bash

echo "------ MEMORY STATUS ------"

echo ""
echo "Using free command:"
free -h

echo ""
echo "Using top command (memory line):"
top -b -n 1 | grep "MiB Mem"

echo ""
echo "Available Memory:"
free -h | awk '/Mem/ {print $7}'
