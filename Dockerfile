FROM postgres
MAINTAINER Alex Varju <alex@varju.ca>

RUN apt-get update \
  && apt-get install -y openssh-server \
  && mkdir -p /root/.ssh \
  && mkdir /var/run/sshd

COPY authorized_keys /root/.ssh

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
