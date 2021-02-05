We'll check if the policy is working as intended.

## violation.yaml
Take a look at the deployment-violation file.

`/root/opa/deployment-violation.yaml`{{open}}

`kubectl apply -f deployment-violation.yaml`{{execute}}

This should get denied.

## non-violation.yaml
Take a look at the deployment-non-violation.yaml.

`/root/opa/deployment-non-violation.yaml`{{open}}

`kubectl apply -f deployment-non-violation.yaml`{{execute}}

This should not get denied.

