We'll check if the policy is working as intended.

## violation.yaml
Take a look at the deployment-violation.yaml file and then apply the file.

`kubectl apply -f deployment-violation.yaml`{{execute}}

This should get denied.

## non-violation.yaml
Take a look at the deployment-non-violation.yaml file and then apply the file.

`kubectl apply -f deployment-non-violation.yaml`{{execute}}

This should not get denied.

