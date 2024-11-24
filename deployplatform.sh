#! /bin/bash
kubectl create -f 'https://strimzi.io/install/latest?namespace=default'
 kubectl wait --for=condition=Ready deploy/strimzi-cluster-operator --timeout=60s
 
#cd deployy
#cd strimzi-kafka-operator
#cd examples
#cd metrics
kubectl create -f kafka-metrics.yaml

kubectl wait --for=condition=Ready kafka/my-cluster --timeout=60s

kubectl create -f prometheus-operator-deployment.yaml

kubectl wait --for=condition=Ready deploy/prometheus-operator --timeout=60s

#cd prometheus-additional-properties
kubectl create -f prometheus-additional.yaml
#cd ..
#cd prometheus-install
kubectl create -f alert-manager.yaml
kubectl create -f prometheus-rules.yaml
#kubectl create -f strimzi-pod-monitor.yaml
kubectl create -f strimzi-pod-monitor2.yaml

#kubectl create -f prometheustt.yaml
kubectl create -f prometheusttt.yaml

kubectl wait --for=condition=Ready sts/prometheus-prometheus --timeout=60s
#cd ..
#cd grafana-install
kubectl create -f grafana.yaml
kubectl wait --for=condition=Ready deploy/grafana --timeout=60s
#kubectl create -f ingress.yaml
kubectl create clusterrolebinding default-admin --clusterrole cluster-admin --serviceaccount=default:default

sleep 60s
#cd deployy/strimzi-kafka-operator/examples/metrics
kubectl create -f kafka-topic.yaml



