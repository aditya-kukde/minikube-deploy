
docker run --name mysqldb -e MYSQL_ROOT_PASSWORD=12345678 -p 3316:3306 -d mysqldb
docker run -d -p 80:5002 --network myapp myapp

