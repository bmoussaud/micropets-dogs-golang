NS=micropets-dev
#kubectl apply -f config/pets_config.yaml -f config/serviceclaims-aria.yaml --namespace $NS
SOURCE="--source-image akseutap6registry.azurecr.io/dogs"
tanzu apps workload apply -f config/workload.yaml --live-update --local-path .  --namespace $NS --yes  --update-strategy merge
