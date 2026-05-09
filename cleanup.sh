#!/bin/bash
set -e

# Always run relative to this script's location, regardless of cwd
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

sudo git restore .
sudo git clean -xdf .
sudo rm -rf build/vyos-1x
sudo chown 1000:1000 -R .
