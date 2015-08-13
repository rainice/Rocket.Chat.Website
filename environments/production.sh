#!/bin/bash

export MONGO_URL=mongodb://001-db.konecty.com/meteor-boilerplate
export MONGO_OPLOG_URL=mongodb://001-db.konecty.com/local
export PORT=3000
export NODE_ENV='development'
export METEOR_SETTINGS="$(cat settings.json)"
export KONECTY_URL="http://my.konecty.com:13000"
export KONECTY_UPLOAD_URL="http://001-blob.konecty.com:8081"
export KONECTY_AUTH_TOKEN_ID="5239aba8cbf1518a33f2ba92"