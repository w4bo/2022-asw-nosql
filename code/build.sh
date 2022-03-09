#!/bin/bash
set -e
if test -f "games.bson"; then
    echo ".env already exists"
else
    cp .env.example .env
fi
docker-compose build
npm install