#!/bin/sh
kubectl -n cattle-monitoring-system get secrets | grep -i helm | grep -v NAME | awk '{print $1}' | xargs kubectl -n cattle-monitoring-system delete secret
