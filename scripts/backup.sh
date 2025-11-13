#!/bin/bash
#backup and comperss a directory

SOURCE="home/alaa"
DEST="backup"

#create destination folder

sudo mkdir -p $DEST

#create backup with timestamp

tar -czf $DEST/home-backup-$(date +%F).tar.gz $SOURCE 2>/home/alaa/linux-admin-automathion/scripts/backup_error.log

echo "backup completed: $DEST/home-backup-$(date +%F).tar.gz"
