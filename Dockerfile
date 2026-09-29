FROM rockylinux/rockylinux:9
RUN \
  dnf -y group install "Development Tools" && \
  adduser -c "Build User" -m build
USER build:build
