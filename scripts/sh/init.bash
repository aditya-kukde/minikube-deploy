# This will setup the minikube enviornment and start a single node minikube cluster

minikube start --vm-driver="virtualbox" --alsologtostderr
echo "Wait for 5 seconds..."
sleep 5
eval $(minikube docker-env)
kubectl config set-context minikube
echo "Wait for 5 seconds..."
sleep 5
minikube dashboard