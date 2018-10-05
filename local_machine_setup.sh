#!/bin/bash

KUBE_CONFIG_FILE_PATH=$1

curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl



mkdir -p $HOME/.kube
cp $KUBE_CONFIG_FILE_PATH ~/.kube/config


curl https://raw.githubusercontent.com/helm/helm/master/scripts/get > get_helm.sh
chmod 700 get_helm.sh
./get_helm.sh

## Initialize helm
helm init

## Good to run this to ensure the Tiller server version is compatible with installed helm client version.  if not, the Tiller server version is upgraded on the OKE Kubernetes clusters mentioned in  ~/.kube/config file 
helm init --upgrade


helm repo update
helm repo add confluentinc https://raw.githubusercontent.com/confluentinc/cp-helm-charts/master
helm install confluentinc/cp-helm-charts --name my-confluent-oss
