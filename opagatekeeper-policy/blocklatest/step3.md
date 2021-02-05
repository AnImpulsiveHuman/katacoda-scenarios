We have to apply the ConstraintTemplate and the Constraint.

## ConstraintTemplate
The ConstraintTemplate has to be applied first.
First, we have to open the file and uncomment the rego policy lines that have been commented out. We can do this by removing the "**#**" sign before the lines.

## What the policy does
- It checks if the kind is "Pod".
- It stores the image name in a variable.
- Finally checks if the name ends with "latest" and if so, denies the deployment.

We will now apply the ConstraintTemplate.

`kubectl apply -f template.yaml`{{execute}}

## Constraint
Lets look at the constraint.yaml before applying.

`kubectl apply -f constraint.yaml`{{execute}}

**NOTE:** If any "no matches for kind" error comes when applying the Constraint file, try applying it again after a couple of minutes.
