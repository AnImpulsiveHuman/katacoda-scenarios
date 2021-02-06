To enforce a policy in OPA Gatekeeper, we'll be needing two files - ConstraintTemplate and Constraint

### ConstraintTemplate
One of the benefits of using OPA Gatekeeper as the admission controller instead of the others is that in this, we can reuse a policy by just providing different parameters.

This contains the name and type of parameters that is going to be used. Apart from the parameters, the Rego policy that we'll use to set restrictions will be in this file.

### Constraint
This contains the **Kind** - This tells on which resources, like Pods, Namespaces etc, the policy has to be enforced. It also contains the values of the parameters that we have defined earlier in the Template file.
