#!/bin/bash

set -e

echo "Downloading ttyd..."

curl -L https://github.com/tsl0922/ttyd/releases/download/1.7.7/ttyd.x86_64 -o ttyd

chmod +x ttyd

PORT=${PORT:-8080}

echo "Starting ttyd on port $PORT"

./ttyd -p $PORT bash
