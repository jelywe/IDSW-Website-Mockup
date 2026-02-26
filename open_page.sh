#!/usr/bin/env bash
set -euo pipefail

# cd '/Users/jerricawerner/Library/CloudStorage/OneDrive-Personal/Projects/IDSW/IDSW Website/IDSW Website Mockup'

PORT=8000
DIR="/Users/jerricawerner/Library/CloudStorage/OneDrive-Personal/Projects/IDSW/IDSW Website/IDSW Website Mockup"
FILE="IDSW Home Page.html"
#selection="$1"

# case "$selection" in
#     "home") FILE="IDSW Home Page.html" ;;
#     "about") FILE="IDSW About.html" ;;
#     "directory") FILE="IDSW Member Directory.html" ;;
# esac



cd "$DIR"

# Start web server
python3 -m http.server "$PORT" >/dev/null 2>&1 &
PID=$!

# Stop server on exit (Ctrl+C)
trap 'kill $PID 2>/dev/null || true' EXIT

URL="http://localhost:${PORT}/${FILE}"

echo "Serving: $DIR"
echo "Opening: $URL"
echo "Press Ctrl+C to stop."

# macOS open (fallback prints URL)
if command -v open >/dev/null 2>&1; then
  open "$URL"
else
  echo "Open this URL in your browser: $URL"
fi

wait $PID
