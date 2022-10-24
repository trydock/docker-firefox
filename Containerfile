FROM ubuntu:jammy
RUN apt update && apt install -y software-properties-common
RUN add-apt-repository ppa:mozillateam/ppa
COPY files/etc/apt/preferences.d/mozilla-firefox /etc/apt/preferences.d/mozilla-firefox
COPY files/etc/apt/apt.conf.d/51unattended-upgrades-firefox /etc/apt/apt.conf.d/51unattended-upgrades-firefox
RUN apt update && apt install -y firefox
CMD ["/usr/bin/firefox"]
