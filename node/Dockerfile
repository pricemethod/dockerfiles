FROM node:10

# install chamber
ENV CHAMBER_VERSION 2.0.0
ENV CHAMBER_SHA256 bdff59df90a135ea485f9ce5bcfed2b3b1cc9129840f08ef9f0ab5309511b224
RUN curl -fsSL -o /usr/local/bin/chamber https://github.com/segmentio/chamber/releases/download/v${CHAMBER_VERSION}/chamber-v${CHAMBER_VERSION}-linux-amd64 \
  && chmod +x /usr/local/bin/chamber \
  && echo "$CHAMBER_SHA256 /usr/local/bin/chamber" | sha256sum -c -

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
     apt-get install -yq --no-install-recommends \
     libasound2 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 \
     libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 \
     libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 \
     libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 \
     libnss3 xvfb netcat && \
     rm -rf /var/lib/apt/lists/*

WORKDIR /app
ADD node-scripts /app
