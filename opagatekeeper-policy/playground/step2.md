Feel free to change the **template.yaml** and the **constraint.yaml** files to create and test your own opa policies.

Just a quick brushup:

- **template.yaml** (ConstraintTempplate) file mainly contains two things:
 - Parameter definition
 - The Rego policy

We can apply the template after making the required changes. 

`kubectl apply -f template.yaml`{{execute}}

- **constraint.yaml** (Constraint) file mainly contains:
 - The parameter values

We can apply the constraint after making the changes. Make sure that the ConstraintTemplate has been applied first.

`kubectl apply -f constraint.yaml`{{execute}}

**NOTE:** If any "no matches for kind" error shows up when applying the **constraint.yaml** file, wait for a couple of minutes and try again.

Finally change the **deployment.yaml** file and then apply to test if your policy is working as intended.

`kubectl apply -f deployment.yaml`{{execute}}
