#!/usr/bin/env bash

gcloud container clusters get-credentials kuby-dev-work --zone us-central1-a --project new-universes

kubectl create -f cassandra-service.yaml
kubectl create -f cassandra-statefulset.yaml

#
#cassandra-service.yaml
#cassandra-statefulset.yaml