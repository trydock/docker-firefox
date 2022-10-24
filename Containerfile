FROM ubuntu:jammy
RUN apt update && apt install -y software-properties-common
RUN add-apt-repository ppa:mozillateam/ppa
COPY LICENSE /LICENSE
COPY README.md /README.md
COPY files/etc/apt/preferences.d/mozilla-firefox /etc/apt/preferences.d/mozilla-firefox
COPY files/etc/apt/apt.conf.d/51unattended-upgrades-firefox /etc/apt/apt.conf.d/51unattended-upgrades-firefox
RUN apt update && apt install -y firefox curl sudo openvpn transmission openssh-client openssh-server netcat xterm
CMD ["/usr/bin/firefox"]
