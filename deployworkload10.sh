#/bin/sh

echo "Deploying the controller"

kubectl create -f controller10.yaml

echo "sleeping 10 sec"

sleep 10

echo "deploying producer and consumer"

kubectl create -f producerconsumer10.yaml
