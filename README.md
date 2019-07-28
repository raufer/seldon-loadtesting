# Seldon Load Testing

Start a load testing with:

```bash
helm install charts/load-test --name loadtest \
    --namespace jx-staging \
    --set replicas="3" \
    --set env.CONTRACT_PATH="s3://manticore-contracts/mnist/contract.json" \
    --set env.HOST="ambassor.gateway.3.130.155.243.nip.io" \
    --set env.PORT="80" \
    --set env.NAMESPACE="jx-staging" \
    --set env.DEPLOYMENT"=manticore"
```

`replicas` controls the load.

To **remove the load** do:

```bash
helm delete loadtest --purge
```