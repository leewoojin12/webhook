#!/bin/bash
KUBECONFIG=$1
NAMESPACE=$2
RELEASE=$3
CHART=$4
VALUES_FILE=$5

helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update

helm upgrade --install $RELEASE $CHART \
  --kubeconfig "$KUBECONFIG" \
  --namespace "$NAMESPACE" \
  --create-namespace \
  --values "$VALUES_FILE"
