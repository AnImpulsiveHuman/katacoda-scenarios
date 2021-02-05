Before applying, open the template.yaml file and uncomment the rego policy lines that have been commented.

`/root/opa/template.yaml`{{open}}

## What the policy does
- It checks if the kind is "Pod".
- It stores the image name in a variable.
- Finally checks if the image name starts with any of the allowed names given in the parameter and if not, denies the deployment.

We will now apply the ConstraintTemplate.

`kubectl apply -f template.yaml`{{execute}}

We will take a look at the Constraint file and then apply it.

`/root/opa/constraint.yaml`{{open}}

We will apply the Constraint.

`kubectl apply -f constraint.yaml`{{execute}}

**NOTE:** If any "no matches for kind" error comes when applying the Constraint file, try applying it again after a couple of minutes.
