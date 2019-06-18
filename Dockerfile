FROM pataquets/ubuntu:bionic

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
    apt-get -y install \
      curl \
      libc-ares2 libcrypto++6 libmediainfo0v5 libpcrecpp0v5 libzen0v5 \
  && \
  curl --fail --location --output /tmp/megacmd.deb \
    https://mega.nz/linux/MEGAsync/xUbuntu_18.04/amd64/megacmd-xUbuntu_18.04_amd64.deb \
  && \
  DEBIAN_FRONTEND=noninteractive \
    apt-get -y purge \
      curl \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/
