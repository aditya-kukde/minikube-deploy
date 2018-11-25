eval $(minikube docker-env)
cd ./deployment

# Create a deployment and a service for database
kubectl create -f db.yml

# Create a deployment and a service for application
kubectl create -f app.yml