#!/bin/sh

echo "Deploying the disk"

kubectl create -f pv.yaml


sleep 10

kubectl create -f pvc.yaml


sleep 5

echo "init the postgres conf"


kubectl create -f postgresinit.yaml


sleep 5

echo "deploying  postgres pod"

kubectl create -f postgresdeploy.yaml


sleep 3


echo "deploying  postgres service"


kubectl create -f postgressvc.yaml


