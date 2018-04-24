#!/usr/bin/env bash

KUBYCLUSTERNAME="the-latest-name-for-kuby"

gcloud container clusters create $KUBYCLUSTERNAME --cluster-version=1.9.6-gke.1 --node-version=1.9.6-gke.1
gcloud container clusters get-credentials $KUBYCLUSTERNAME --zone us-central1-a --project new-universes

kubectl create -f cassandra-service.yaml
kubectl create -f cassandra-statefulset.yaml
