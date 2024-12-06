FROM registry.fedoraproject.org/fedora-minimal:41

RUN dnf install -y osbuild

COPY entrypoint.bash /entrypoint.bash

ENTRYPOINT ["/entrypoint.bash"]
