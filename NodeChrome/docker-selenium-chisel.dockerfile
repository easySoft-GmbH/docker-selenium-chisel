FROM selenium/standalone-chrome:4.15.0-20231110
LABEL maintainer="e.louvard@easysoft.de"

# inspirate from https://github.com/containerize-my-server/docker-image-selenium-with-tunnel

USER root
ADD https://github.com/jpillora/chisel/releases/download/v1.9.1/chisel_1.9.1_linux_amd64.gz /usr/local/bin/chisel.gz
RUN gunzip /usr/local/bin/chisel.gz && \
    chown seluser.seluser /usr/local/bin/chisel && \
    chmod 700 /usr/local/bin/chisel
ADD etc /etc
USER seluser

#==============================
# Scripts to run chisel server
#==============================
COPY start-schisel-server.sh \
      /opt/bin/
