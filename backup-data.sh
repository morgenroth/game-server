#!/bin/bash
#

if [ ! -d "${1}" ]; then
  echo "Please specify a target directory as first parameter."
  echo "Example: $0 /mnt"
  exit 1
fi

BACKUP_DIR=${1}
BACKUP_FILE=${BACKUP_DIR}/gameserver_data-$(date +"%Y%m%d%H%M").tar.gz

echo "Backup to ${BACKUP_FILE}"
tar cvzf ${BACKUP_FILE} /data
