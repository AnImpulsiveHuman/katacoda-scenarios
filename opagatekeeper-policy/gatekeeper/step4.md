Now that the policy has been implemented, we'll see if it has been done properly.

We have two files. One file - **violation.yaml**, which violates the enforced policy and the other file - **non-violation.yaml**, which does not.

We can conclude that the policy has been enforced correctly if the violation.yaml file gets denied and the non-violation.yaml file does not.

## violation.yaml
Take a look at deployment-violation.yaml file and then apply.

`kubectl apply -f deployment-violation.yaml`{{execute}}

The host path used here is not allowed. So this will get denied.

## non-violation.yaml
Take a look at the deployment-non-violation.yaml file and then apply.

`kubectl apply -f deployment-non-violation.yaml`{{execute}}

The host path used here is allowed. So this will not get denied.
