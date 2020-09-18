#!/usr/bin/env bash
set -e

cd "$(dirname "$0")"
GH_PATH=$(git remote get-url origin | grep -E -i -w -o "[a-z]+/[a-z]+")

npm init -y
npm install --save typescript 
npm install --save-dev @types/node
git add package.json package-lock.json
git commit -m "Bootstraped using setup.sh"
