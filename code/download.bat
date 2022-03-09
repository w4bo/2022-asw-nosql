cd mongodb\data
IF EXIST "games.bson" (
  echo games.bson exists
) ELSE (
  curl -o games.bson http://big.csr.unibo.it/projects/nosql-datasets/games.bson
)

IF EXIST "restaurants.bson" (
  echo restaurants.bson exists
) ELSE (
  curl -o restaurants.bson http://big.csr.unibo.it/projects/nosql-datasets/restaurants.bson
)

IF EXIST "yelp-business.bson" (
  echo yelp-business.bson exists
) ELSE (
  curl -o yelp-business.bson http://big.csr.unibo.it/projects/nosql-datasets/yelp-business.bson
)

IF EXIST "cities.json" (
    echo "cities.json exists"
) ELSE (
    curl -o cities.json http://big.csr.unibo.it/projects/nosql-datasets/cities.json
)

IF EXIST "NBA2016.json" (
    echo "NBA2016.json exists"
) ELSE (
    curl -o NBA2016.json http://big.csr.unibo.it/projects/nosql-datasets/NBA2016.json
)

cd ..\..\mysql\data
IF EXIST "foodmart.sql" (
  echo foodmart.sql exists
) ELSE (
  curl -o foodmart.sql http://big.csr.unibo.it/projects/nosql-datasets/foodmart.sql
)
cd ..\..
