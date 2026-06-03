#!/bin/sh

# Load environment variables
. /app/env-vars.sh

cd "$MOVARR_RADARR_DIRECTORY";
find . -type f \( -name "*.sv.srt" -o -name "*.swe.srt" -o -name "*.en.srt" -o -name "*.eng.srt" -o -name "*.sv.sdh.srt" -o -name "*.swe.sdh.srt" -o -name "*.en.sdh.srt" -o -name "*.eng.sdh.srt" \) -exec cp --parents -v {} "$MOVARR_TDARR_MOVIES_OUTPUT_DIRECTORY" \;
chmod -R 777 "$MOVARR_TDARR_MOVIES_OUTPUT_DIRECTORY";

cd "$MOVARR_SONARR_DIRECTORY";
find . -type f \( -name "*.sv.srt" -o -name "*.swe.srt" -o -name "*.en.srt" -o -name "*.eng.srt" -o -name "*.sv.sdh.srt" -o -name "*.swe.sdh.srt" -o -name "*.en.sdh.srt" -o -name "*.eng.sdh.srt" \) -exec cp --parents -v {} "$MOVARR_TDARR_SERIES_OUTPUT_DIRECTORY" \;
chmod -R 777 "$MOVARR_TDARR_SERIES_OUTPUT_DIRECTORY";