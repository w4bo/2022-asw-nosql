#!/bin/bash
set -xo

./build.sh
./download.sh

if [ -f .env ]; then
  export $(cat .env | sed 's/#.*//g' | xargs)
fi

# clean all the docker containers
sudo docker stop $(docker ps -aq)
sudo docker rm $(docker ps -aq)
sudo docker system prune -f
sudo docker volume rm $(docker volume ls -qf dangling=true)

set -e
sudo docker-compose down
sudo docker-compose up --build -d --remove-orphans
./wait-for-it.sh ${MONGO_URL}:${MONGO_PORT} --strict --timeout=10 -- echo "MongoDB is up"
sleep 20
npm test -- --detectOpenHandles
