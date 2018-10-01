#!/bin/bash
set -xu

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
cd "${SCRIPT_DIR}/.."

cp .env.production .env.production.bak
cp ".env.$TARGET" .env.production

./node_modules/.bin/react-scripts build
mv build "build-$TARGET"

mv .env.production.bak .env.production
