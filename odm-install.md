https://github.com/icp4a/cert-kubernetes/blob/master/platform/ocp/install.md


New in 19.0.3  In a custom resource descriptor with the Cloud Pak operator, use the following YAML:
externalCustomDatabase:
      datasourceRef: customdatasource-secret
      driverPvc: customdatasource-pvc
