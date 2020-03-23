Ldap setup for active directory

https://docs.openshift.com/container-platform/4.2/authentication/identity_providers/configuring-ldap-identity-provider.html

Character case in attributres is critical:

```
apiVersion: config.openshift.io/v1
kind: OAuth
spec:
  identityProviders:
    - ldap:
        attributes:
          email:
            - mail
          id:
            - dn
          name:
            - sAMAccountName
          preferredUsername:
            - sAMAccountName
        bindDN: >-
          CN=user1,DC=myorg,DC=com,DC=pl
        bindPassword:
          name: ldap-bind-password-45gjw
        insecure: true
        url: >-
          ldap://host:port/DC=myorg,DC=com,DC=pl?sAMAccountName?sub?(objectcategory=person)
      mappingMethod: claim
      name: ldap-myorg
      type: LDAP
```

in case of incorrect config clear following objects:

```
oc get users
oc delete user xyz

oc get identity
oc delete identity xyz-ident
```

Set cluster role:  
`oc adm policy add-cluster-role-to-user cluster-admin xyz`
