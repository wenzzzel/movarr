#!/bin/sh
cd "$MOVARR_RADARR_DIRECTORY";
find . -type f -name "*.srt" -exec cp --parents -v {} "$MOVARR_TDARR_MOVIES_OUTPUT_DIRECTORY" \;

cd "$MOVARR_SONARR_DIRECTORY";
find . -type f -name "*.srt" -exec cp --parents -v {} "$MOVARR_TDARR_SERIES_OUTPUT_DIRECTORY" \;