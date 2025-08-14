#!/bin/sh

# Put env variables into a file for the cron jobs to use
echo "MOVARR_RADARR_DIRECTORY=${MOVARR_RADARR_DIRECTORY}" > /app/env-vars.sh
echo "MOVARR_TDARR_MOVIES_OUTPUT_DIRECTORY=${MOVARR_TDARR_MOVIES_OUTPUT_DIRECTORY}" >> /app/env-vars.sh
echo "MOVARR_SONARR_DIRECTORY=${MOVARR_SONARR_DIRECTORY}" >> /app/env-vars.sh
echo "MOVARR_TDARR_SERIES_OUTPUT_DIRECTORY=${MOVARR_TDARR_SERIES_OUTPUT_DIRECTORY}" >> /app/env-vars.sh
chmod 600 /app/env-vars.sh

# Setup cron job that copies the latest subtitles to the directory used by Emby
# Note: Using random minute (10) to minimize the risk of conflicts with other tasks
(crontab -l 2>/dev/null; echo "$MOVARR_CRON /app/copy-subtitles.sh") | crontab -

# Run cron in foreground
/usr/sbin/crond -f