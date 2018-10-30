#!/bin/bash
set -euxo pipefail

export DISPLAY=:0
Xvfb ${DISPLAY} &
XVFB=$!

export NODE_ENV=test
export CI=true

npm start &
WEB=$!

./wait-for.sh localhost:${PORT}

COMMAND="npm test"
if (( $# > 0 )); then
    COMMAND="$@"
fi

eval "$COMMAND"
kill ${WEB} ${XVFB}
