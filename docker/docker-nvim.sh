#!/bin/bash

# Full path to the current directory
CURRENT_DIR="$(pwd)"
CONTAINER_DIR="/work-dir"

# Capture all arguments provided to the script
ARGS="$@"

# Mount the current directory to /work-dir inside the container
VOLUME_MOUNT="-v $CURRENT_DIR:$CONTAINER_DIR"

# Image to use
IMG="custom-nvim"

# Run the containerized nvim
docker run -w $CONTAINER_DIR -it --rm $VOLUME_MOUNT $IMG nvim $ARGS

