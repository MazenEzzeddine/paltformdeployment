#! /bin/bash
cd deployy/strimzi-kafka-operator/examples/metrics
kubectl delete -f kafka-metrics.yaml
kubectl delete -f 'https://strimzi.io/install/latest?namespace=default'

kubectl delete -f prometheus-operator-deployment.yaml

cd prometheus-additional-properties
kubectl delete -f prometheus-additional.yaml
cd ..
cd prometheus-install
kubectl delete -f alert-manager.yaml
kubectl delete -f prometheus-rules.yaml
kubectl delete -f strimzi-pod-monitor.yaml
kubectl delete -f prometheustt.yaml


#  kubectl wait --for=condition=Ready deploy/strimzi-cluster-operator
 
# cd deployy
# cd strimzi-kafka-operator
# cd examples
# cd metrics
# kubectl create -f kafka-metrics.yaml

# kubectl wait --for=condition=Ready pod/my-cluster-kafka-2