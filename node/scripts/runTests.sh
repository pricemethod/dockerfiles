#!/usr/bin/env bash
set -euxo pipefail

export DISPLAY=:0
Xvfb ${DISPLAY} &

NODE_ENV=test npm start &
bash ./wait-for.sh localhost:${PORT}
npm test
