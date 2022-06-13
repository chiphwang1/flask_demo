#!/bin/bash

kubectl -n demo3 get --kubeconfig /tmp/kubeconfig svc server-lb-service -o jsonpath='{.status.loadBalancer.ingress[0]}'