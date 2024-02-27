#!/usr/bin/env bash

minikube start --cpus 4 --memory 4096
kubectl apply -f yaml/
