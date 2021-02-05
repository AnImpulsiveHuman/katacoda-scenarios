In this, we'll apply a policy to prohibit unauthorized host paths.

We have to apply the ConstraintTemplate and the Constraint.

## ConstraintTemplate
The ConstraintTemplate has to be applied first.
First, we have to open the file and uncomment the rego policy lines that have been commented out. We can do this by removing the "**#**" before each line.

`/root/opa/template.yaml`{{open}}

Now we can apply the template.

`kubectl apply -f template.yaml`{{execute}}

## What the Rego policy does
- Checks if the kind is "Pod".
- Stores the host path in a variable.
- Finally checks if the host path used is in the allowed paths list passed as a parameter.
 
## Constraint
Lets look at the constraint.

`/root/opa/constraint.yaml`{{open}}

We can apply the constraint.

`kubectl apply -f constraint.yaml`{{execute}}
