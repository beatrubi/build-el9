FROM docker.io/rockylinux/rockylinux:9
RUN \
  dnf -y group install "Development Tools" && \
  dnf install -y rpmdevtools rpmlint && \
  adduser -c "Build User" -m build
USER build:build
