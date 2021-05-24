FROM kalilinux/kali-rolling

ARG USER=root
ENV USER ${USER}

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN apt-get update -y && apt-get install -y \
    # Install more Kali tools
    metasploit-framework \
    dirb \
    # Install basic linux tools
    iproute2 \
    # Install a VNC server
    xfce4 \
    xfce4-goodies \
    tightvncserver dbus-x11 \
    # Install other tools
    vim \
    python3 \
    python-setuptools \
    python3-pip \
    chromium

RUN pip install github3.py

RUN mkdir -p /root/.vnc
RUN USER= echo -e "#!/bin/bash\nxrdb /root/.Xresources\nstartxfce4 &" > /root/.vnc/xstartup \
    && chmod +x /root/.vnc/xstartup

ENTRYPOINT bash