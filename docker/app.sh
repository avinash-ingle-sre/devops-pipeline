#!/bin/sh

echo "🚀 Hello from inside the Docker container!"
echo "🕒 Started at: $(date)"

# Run indefinitely (optional, if you want to keep the container running)
tail -f /dev/null
