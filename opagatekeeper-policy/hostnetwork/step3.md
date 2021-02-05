We have to apply the ConstraintTemplate first.
`kubectl apply -f https://raw.githubusercontent.com/vishalpranav03/opa-gatekeeper-policies/main/OPA%20Gatekeeper/Prohibit%20host%20network/template.yaml`{{execute}}

Next, the Constraint file.
`kubectl apply -f https://raw.githubusercontent.com/vishalpranav03/opa-gatekeeper-policies/main/OPA%20Gatekeeper/Prohibit%20host%20network/constraint.yaml`{{execute}}

**NOTE:** If any "no matches for kind" error comes when applying the Constraint file, try applying it again after a couple of minutes.
