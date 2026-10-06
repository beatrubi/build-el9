FROM docker.io/rockylinux/rockylinux:9
RUN \
  dnf -y group install "Development Tools" && \
  dnf install -y sudo dnf-plugins-core rpmdevtools rpmlint && \
  dnf clean all && \
  groupadd -g 1001 build && \
  useradd -c "Build User" -u 1001 -g 1001 -G wheel -s /bin/bash -m build && \
  sed -i -E 's/^%wheel/# %wheel/; s/# %wheel(.*NOPASSWD:)/%wheel\1/' \
    /etc/sudoers
USER build
CMD ["/bin/bash"]
