#/!/bin/bash

# line to save free memory to text file
free -h > ~/backups/freemem/freemem.txt

# line to check disk usage
df -h > ~/backups/diskuse/diskuse.txt

#line to check disk space
du -h > ~/backups/freedisk/freedisk.txt

#line to check open list
lsof > ~/backups/openlist/openlist.txt
