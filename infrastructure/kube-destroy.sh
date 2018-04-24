#!/usr/bin/env bash

KUBYCLUSTERNAME="the-latest-name-for-kuby"

gcloud container clusters delete $KUBYCLUSTERNAME
