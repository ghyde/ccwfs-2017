FROM fedora:26
MAINTAINER Garrett Hyde <git@garretthyde.com>

RUN dnf upgrade -y && dnf clean all
RUN dnf install -y firefox && dnf clean all
RUN useradd -m -s /bin/bash firefox
COPY slides /srv/
USER firefox
CMD /usr/bin/firefox file:///srv/index.html
