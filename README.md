# Seldon Load Testing

Start a load testing with:

```bash
helm install charts/load-test --name loadtest \
    --namespace jx-staging \
    --set replicas="3" \
    --set env.HOST="ambassor.gateway.3.130.155.243.nip.io" \
    --set env.PORT="'80'" \
    --set env.NAMESPACE="jx-staging" \
    --set env.DEPLOYMEN="manticore"
```

`replicas` controls the load.

To **remove the load** do:

```bash
helm delete loadtest --purge
```
