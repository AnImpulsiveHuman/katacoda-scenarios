We'll check if the policy is working as intended.

## violation.yaml
Take a look at the deployment-violation.yaml file and then apply the file.

`kubectl apply -f deployment-violation.yaml`{{execute}}

This will get denied as "hostNetwork" is set to true.

## non-violation.yaml
Take a look at the deployment-non-violation.yaml file and then apply the file.

`kubectl apply -f deployment-non-violation.yaml`{{execute}}

This will not get denied as "hostNetwork" is not set to true. 

