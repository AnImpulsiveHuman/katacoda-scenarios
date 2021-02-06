We'll check if the policy is working as intended.

## violation.yaml
Take a look at the deployment-violation.yaml before applying.

`kubectl apply -f deployment-violation.yaml`{{execute}}

The image used here does not belong to any of the allowed repos. So this gets denied.

## non-violation.yaml
Take a look at the deployment-non-violation.yaml before applying.

`kubectl apply -f deployment-non-violation.yaml`{{execute}}

The image used here belongs to one of the allowed repos. So this does not get denied.

