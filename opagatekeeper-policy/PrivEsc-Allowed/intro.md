![image](https://user-images.githubusercontent.com/62760235/107376665-2a676500-6b10-11eb-9777-200bf7c3970e.png)

We are going to implement OPA policy for the situation when we need to make sure pod contains the security context with allowPrivilegeEscalation=true. This defaults to allowed so as to not break setuid binaries. 
