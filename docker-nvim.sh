#!/bin/bash

# Capture all arguments provided to the script
ARGS="$@"

# Get the directory of the file provided as an argument
if [[ -f $ARGS ]]; then
    DIRECTORY="$(dirname $ARGS)"
else
    DIRECTORY="$ARGS"
fi

# Resolve the full path of the directory
DIRECTORY_FULL_PATH="$(realpath $DIRECTORY)"
CONTAINER_DIR="/work-dir"

# Mount the resolved directory to /work-dir inside the container
VOLUME_MOUNT="-v $DIRECTORY_FULL_PATH:$CONTAINER_DIR"

# Image to use
#IMG="custom-nvim"
IMG="biecho/lunar-nvim"

# Run the containerized nvim
docker run -w $CONTAINER_DIR -it --rm $VOLUME_MOUNT $IMG lvim "$(basename $ARGS)"

