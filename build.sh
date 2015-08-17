#!/bin/bash

if [ ! $1 ]; then
	echo " Example of use: source build.sh production"
fi

if [ $1 ]; then
	source ./build-info.sh
	export METEOR_SETTINGS=$(cat settings.$1.json)
	meteor build --server https://rocket.chat --directory /var/www/rocket.chat.website
	cd /var/www/rocket.chat.website/bundle/programs/server
	npm install
	cd /var/www/rocket.chat.website/current
	pm2 startOrRestart /var/www/rocket.chat.website/current/pm2.$1.json
fi
