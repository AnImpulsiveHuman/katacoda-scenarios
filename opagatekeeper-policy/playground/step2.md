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

**NOTE:** If "no matches for kind" error comes when applying the Constraint file, try the following fixes:
- Make sure all the rego policy lines have been uncommented. 
- Apply the template.yaml and the constraint.yaml again.
- If the error still persists, try applying the constraint.yaml again after a couple of minutes.
