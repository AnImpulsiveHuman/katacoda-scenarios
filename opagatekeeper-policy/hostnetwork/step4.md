We'll check if the policy is working as intended.

## violation.yaml
`kubectl apply -f https://raw.githubusercontent.com/vishalpranav03/opa-gatekeeper-policies/main/OPA%20Gatekeeper/Prohibit%20host%20network/deployment-violation.yaml`{{execute}}

This should get denied.

## non-violation.yaml
`kubectl apply -f https://raw.githubusercontent.com/vishalpranav03/opa-gatekeeper-policies/main/OPA%20Gatekeeper/Prohibit%20host%20network/deployment-non-violation.yaml`{{execute}}

This should not get denied.

