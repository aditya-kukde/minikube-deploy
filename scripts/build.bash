
# Build docker images into kubernetes registry - only used for minikube deployment - should be replaced by docker or aws ecr login
eval $(minikube docker-env)

# Build docker image for mysql database
cd ./db
docker build -t bucketlist-db:3 .

# Build docker image for web application
cd ..
cd ./app
docker build -t bucketlist-app:3 .