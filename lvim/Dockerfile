FROM alpine:edge

WORKDIR /tmp

# Install necessary dependencies, including ca-certificates
RUN apk add --no-cache yarn git python3 cargo neovim ripgrep alpine-sdk bash curl ca-certificates openssl \
    && update-ca-certificates

# Set git to use OpenSSL for SSL operations
RUN git config --global http.sslBackend "openssl"
RUN git config --global --add remote.origin.proxy ""


# Install LunarVim globally without a dedicated user
RUN LV_BRANCH='release-1.3/neovim-0.9' \
    yes | bash -c "curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/release-1.3/neovim-0.9/utils/installer/install.sh | bash"

# Set the default command to open LunarVim
ENV PATH="/root/.local/bin:${PATH}"
CMD ["bash"]
