The first thing we have to do is to set OPA Gatekeeper as the admission controller. This can be easily done by using the pre-built image.

`kubectl apply -f https://raw.githubusercontent.com/open-policy-agent/gatekeeper/release-3.2/deploy/gatekeeper.yaml`{{execute}}

One way check to if the gatekeeper has been implemented by seeing if the "gatekeeper-system" namespace has been created and is active.

`kubectl get namespaces`{{execute}}

