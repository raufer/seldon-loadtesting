#!/bin/bash

aws s3 cp $CONTRACT_PATH .

seldon-core-api-tester \
   contract.json \
   $HOST $PORT \
   $DEPLOYMENT \
   --namespace $NAMESPACE \
   --log-level INFO \
   --endpoint predict \
   --batch-size 3 \
   --n-requests 300 -p  


