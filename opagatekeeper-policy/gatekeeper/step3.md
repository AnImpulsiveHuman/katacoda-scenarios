In this, we'll apply a policy to prohibit unauthorized host paths.

We have to apply the ConstraintTemplate and the Constraint.

## ConstraintTemplate
The ConstraintTemplate has to be applied first.
First, we have to open the file and uncomment the rego policy lines that have been commented out after going through the policy. 

We can do this by removing the "**#**" before the start of each line.

For example, 

`#input.review.object.kind == "Pod"` becomes `input.review.object.kind == "Pod"`

Now we can apply the template.

`kubectl apply -f template.yaml`{{execute}}

## What the Rego policy does
- Checks if the kind is "Pod".
- Stores the host path in a variable.
- Finally checks if the host path used is in the allowed paths list passed as a parameter.
 
## Constraint
Take a look at the constraint.yaml file and then apply the constraint.

`kubectl apply -f constraint.yaml`{{execute}}

**NOTE:** If "no matches for kind" error comes when applying the Constraint file, make sure all the rego policy lines have been uncommented. If the error still persists, try applying it again after a couple of minutes.

