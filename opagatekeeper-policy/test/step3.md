In this, we'll apply a policy to prohibit unauthorized host paths.

We have to apply the ConstraintTemplate and the Constraint.

The ConstraintTemplate has to be applied first.
`kubectl apply -f https://raw.githubusercontent.com/vishalpranav03/opa-gatekeeper-policies/main/OPA%20Gatekeeper/Prohibit%20host%20path/template.yaml`{{execute}}

Followed by the Constraint.
`kubectl apply -f https://raw.githubusercontent.com/vishalpranav03/opa-gatekeeper-policies/main/OPA%20Gatekeeper/Prohibit%20host%20path/constraint.yaml`{{execute}}
