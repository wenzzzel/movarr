#!/bin/sh

# Setup cron job that copies the latest subtitles to the directory used by Emby
# Note: Using random minute (10) to minimize the risk of conflicts with other tasks
(crontab -l 2>/dev/null; echo "$MOVARR_CRON /app/copy-subtitles.sh") | crontab -

# Run cron in foreground
/usr/sbin/crond -f