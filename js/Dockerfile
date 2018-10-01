FROM node:10.11.0-alpine

WORKDIR /app

RUN apk add --no-cache curl bash

# Install chamber
ENV CHAMBER_VERSION 2.0.0
ENV CHAMBER_SHA256 bdff59df90a135ea485f9ce5bcfed2b3b1cc9129840f08ef9f0ab5309511b224
RUN curl -fsSL -o /usr/local/bin/chamber https://github.com/segmentio/chamber/releases/download/v${CHAMBER_VERSION}/chamber-v${CHAMBER_VERSION}-linux-amd64 \
  && chmod +x /usr/local/bin/chamber \
  && echo "$CHAMBER_SHA256  /usr/local/bin/chamber" | sha256sum -c -

