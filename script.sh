#!/bin/bash

seldon-core-api-tester \
   contract.json \
   $HOST $PORT \
   $DEPLOYMENT \
   --namespace $NAMESPACE \
   --log-level INFO \
   --endpoint predict \
   --batch-size 3 \
   --n-requests 100000 -p


