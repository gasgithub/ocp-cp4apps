https://github.com/icp4a/cert-kubernetes/blob/master/platform/ocp/install.md


New in 19.0.3  In a custom resource descriptor with the Cloud Pak operator, use the following YAML:
externalCustomDatabase:
      datasourceRef: customdatasource-secret
      driverPvc: customdatasource-pvc

An external database can use Db2 or PostgreSQL without customization. Use the following configuration parameters:
•Server type: externalDatabase.type
•Server name: externalDatabase.serverName
•Port: externalDatabase.port
•Database name: externalDatabase.databaseName
•Secret credentials: externalDatabase.secretCredentials



[root@bastion cert-kubernetes]# scripts/deployOperator.sh -i default-route-openshift-image-registry.apps.openshift-poc.dev.pekao.com.pl/odm-project/icp4a-operator:19.0.3 -a accept
Using the operator image name: default-route-openshift-image-registry.apps.openshift-poc.dev.pekao.com.pl/odm-project/icp4a-operator:19.0.3
customresourcedefinition.apiextensions.k8s.io/icp4aclusters.icp4a.ibm.com created
serviceaccount/ibm-cp4a-operator created
role.rbac.authorization.k8s.io/ibm-cp4a-operator created
rolebinding.rbac.authorization.k8s.io/ibm-cp4a-operator created
deployment.apps/ibm-cp4a-operator created
All descriptors have been successfully applied. Monitor the pod status with 'kubectl get pods -w'.

