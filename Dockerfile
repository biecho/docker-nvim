FROM alpine:edge

WORKDIR /workspace

RUN apk add git lazygit neovim ripgrep alpine-sdk --update && \
    git clone https://github.com/LazyVim/starter ~/.config/nvim

