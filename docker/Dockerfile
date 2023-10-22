FROM alpine:latest

# Install required packages
RUN apk add --no-cache git nodejs neovim ripgrep build-base wget bash

# Clone NvChad configuration
RUN git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

# Default command
CMD ["nvim"]

