#!/usr/bin/env bash
set -euxo pipefail

export DISPLAY=:0
Xvfb ${DISPLAY} &

npm start &
bash ./wait-for.sh localhost:${PORT}
npm test
