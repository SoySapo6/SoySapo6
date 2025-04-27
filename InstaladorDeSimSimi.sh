#!/bin/bash
mkdir tmp
tempfile="/tmp/simichat.js"
curl -s https://raw.githubusercontent.com/SoySapo6/SoySapo6/refs/heads/main/NightAPI-Simi.js > "$tempfile"
node "$tempfile"
rm "$tempfile"
