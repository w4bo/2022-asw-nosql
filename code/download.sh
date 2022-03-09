#!/bin/bash
set -e
cd mongodb/data
if test -f "cities.json"; then
    echo "cities.json exists"
else
    curl -o cities.json http://big.csr.unibo.it/projects/nosql-datasets/cities.json
fi
if test -f "NBA2016.json"; then
    echo "NBA2016.json exists"
else
    curl -o NBA2016.json http://big.csr.unibo.it/projects/nosql-datasets/NBA2016.json
fi
if test -f "games.bson"; then
    echo "games.bson exists"
else
    curl -o games.bson http://big.csr.unibo.it/projects/nosql-datasets/games.bson
fi
if test -f "restaurants.bson"; then
    echo "restaurants.bson exists"
else
    curl -o restaurants.bson http://big.csr.unibo.it/projects/nosql-datasets/restaurants.bson
fi
if test -f "yelp-business.bson"; then
    echo "yelp-business.bson exists"
else
    curl -o yelp-business.bson http://big.csr.unibo.it/projects/nosql-datasets/yelp-business.bson
fi
ls -las
cd ../../mysql/data
if test -f "foodmart.sql"; then
    echo "foodmart.sql exists"
else
    curl -o foodmart.sql http://big.csr.unibo.it/projects/nosql-datasets/foodmart.sql
fi
cd ../../