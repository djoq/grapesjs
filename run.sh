#!/bin/bash

/run.sh &

cd /app && npm install  && npm run build && npm run build:fonts
http-server -p 8001
