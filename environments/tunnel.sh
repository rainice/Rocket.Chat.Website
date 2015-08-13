#!/bin/bash

export MONGO_URL=mongodb://localhost:27018/meteor-boilerplate
export MONGO_OPLOG_URL=mongodb://localhost:27018/local
export PORT=3000
export NODE_ENV='development'
export METEOR_SETTINGS="$(cat settings.json)"
export KONECTY_URL="http://localhost:3001"