#!/bin/bash
cd /opt/logs/ 
find . -type f -name '*log*' -exec cp '{}' /opt/logs/Log_Backup \; 
cd /opt/logs/Log_Backup 
find /opt/logs/Log_Backup -type f -name '*log*' > include-file
tar -cvf $(hostname)_$(date +%Y-%m-%d).tar.gz -T include-file
exit
