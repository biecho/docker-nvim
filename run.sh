#!/bin/sh

docker run -v nvim-config:/root/.config/nvim -v $(pwd):/workspace -it --rm nvim nvim "$@"


