We have to apply the ConstraintTemplate and the Constraint.

## ConstraintTemplate
The ConstraintTemplate has to be applied first.
First, we have to open the file and uncomment the rego policy lines that have been commented out after going through the policy. 

We can do this by removing the "**#**" before the start of each line.

For example, 

`#input.review.object.kind == "Pod"` becomes `input.review.object.kind == "Pod"`

## What the policy does
- It checks if the kind is "RoleBinding".
- It checks if the role name is "role-manager".
- It stores the user name in a variable.
- It stores the list of allowed users from the parameter in a variable.
- Finally checks if the user is not in the list of allowed users and if so, denies the deployment.

We will now apply the ConstraintTemplate.

`kubectl apply -f template.yaml`{{execute}}

## Constraint
Lets look at the constraint.yaml before applying.

`kubectl apply -f constraint.yaml`{{execute}}

**NOTE:** If "no matches for kind" error comes when applying the Constraint file, try the following fixes:
- Make sure all the rego policy lines have been uncommented. 
- Apply the template.yaml and the constraint.yaml again.
- If the error still persists, try applying the constraint.yaml again after a couple of minutes.
