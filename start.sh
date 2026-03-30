#!/bin/bash

set -e

echo "Installing curl..."
apt update && apt install -y curl

echo "Downloading ttyd..."

curl -L -o ttyd https://github.com/tsl0922/ttyd/releases/download/1.7.7/ttyd.x86_64

chmod +x ttyd

echo "Checking ttyd..."
ls -la ttyd

PORT=${PORT:-8080}

echo "Starting ttyd on port $PORT"

./ttyd -p $PORT -c admin:admin bash
