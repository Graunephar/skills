#!/usr/bin/env bash
# Print terminal QR code for a URL, and save a PNG for chat display.
# Usage: qr.sh <url> <out-png-path>
set -euo pipefail
url="$1"
out="${2:-/tmp/demo-qr.png}"
qrencode -t ANSIUTF8 "$url"
qrencode -o "$out" -s 8 "$url"
echo "PNG: $out"
