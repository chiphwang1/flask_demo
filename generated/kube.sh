#!/bin/bash

kubectl -n example get --kubeconfig /tmp/kubeconfig svc server-lb-service -o jsonpath='{.status.loadBalancer.ingress[0]}'