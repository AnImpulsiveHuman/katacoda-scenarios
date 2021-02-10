We'll check if the policy is working as intended.

## violation.yaml
Take a look at the deployment-violation.yaml file before applying.

`kubectl apply -f deployment-violation.yaml`{{execute}}

This will get denied as the image is tagged as "latest".

## non-violation.yaml
Take a look at the deployment-non-violation.yaml before applying.

`kubectl apply -f deployment-non-violation.yaml`{{execute}}

This will not get denied as the image is not tagged as "latest".

