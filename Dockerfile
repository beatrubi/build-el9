FROM docker.io/rockylinux/rockylinux:9
RUN \
  dnf -y group install "Development Tools" && \
  dnf install -y rpmdevtools rpmlint && \
  groupadd -g 1001 build && \
  useradd -c "Build User" -u 1001 -g 1001 -m build
USER build:build
