FROM fedora
MAINTAINER http://fedoraproject.org/wiki/Cloud

RUN dnf -y update && dnf clean all
RUN dnf -y install fedora-packager @development-tools wget && dnf clean all

RUN useradd -m -s /bin/bash user && usermod -a -G mock user

USER user
WORKDIR /home/user

CMD [ "/bin/bash" ]
