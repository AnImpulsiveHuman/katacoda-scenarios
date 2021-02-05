Feel free to change the **template.yaml** and the **constraint.yaml** files to create and test your own opa policies. 

`kubectl apply -f template.yaml`{{execute}}
`kubectl apply -f constraint.yaml`{{execute}}

**NOTE:** If any "no matches for kind" error shows up when applying the **constraint.yaml** file, wait for a couple of minutes and try again.

Finally change and apply the deployment file to test if your policy is working as intended.
`kubectl apply -f deployment.yaml`{{execute}}
