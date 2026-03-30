#!/bin/bash

set -e

echo "Updating system..."
apt update

echo "Installing ttyd..."
apt install -y ttyd bash

echo "Starting ttyd web terminal..."
ttyd -p $PORT bash
