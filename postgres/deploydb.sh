#/bin/sh

echo "Deploying the disk"

kubectl create -f pvcgke.yaml

echo "init the postgres conf"


kubectl create -f postgresinit.yaml


sleep 5

echo "deploying  postgres pod"

kubectl create -f postgresdeploy.yaml


sleep 3


echo "deploying  postgres service"


kubectl create -f postgressvc.yaml


