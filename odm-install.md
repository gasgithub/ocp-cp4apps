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
