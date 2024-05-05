# HOMELAB-K8S-NGINX_INGRESS

Wrapper for [Ingress Nginx helm chart](https://artifacthub.io/packages/helm/ingress-nginx/ingress-nginx)

## Run

> Assumes the cluster is using metallb

```sh
helm upgrade --install --create-namespace -n ingress-nginx ingress-nginx . --wait --wait-for-jobs --timeout 3m
# OR --atomic
```

## Updating Dependencies

```sh
rm -rf charts && helm dep update && cd charts && for filename in *.tgz; do tar -xf "$filename" && rm -f "$filename"; done; cd ..
```
