#!/bin/bash
cd playground;
until kubectl cluster-info 2&>/dev/null
do
 echo "Waiting for Kubernetes cluster startup...";
 sleep 5;
done
