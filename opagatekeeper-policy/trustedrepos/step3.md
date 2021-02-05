We have to apply the ConstraintTemplate and the Constraint.

## ConstraintTemplate
The ConstraintTemplate has to be applied first.
First, we have to open the file and uncomment the rego policy lines that have been commented out. We can do this by removing the "**#**" sign before the lines.

`/root/opa/template.yaml`{{open}}

## What the policy does
- It checks if the kind is "Pod".
- Finally checks if the "hostNetwork" is true and if so, denies the deployment.

Now we can apply the template.

`kubectl apply -f template.yaml`{{execute}}

## Constraint
Lets look at the constraint.

`/root/opa/constraint.yaml`{{open}}

We can apply the constraint.

`kubectl apply -f constraint.yaml`{{execute}}

**NOTE:** If any "no matches for kind" error comes when applying the Constraint file, try applying it again after a couple of minutes.
