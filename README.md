https://aex.dev.azure.com/me

1 
Run pipeline be-storage-pipeline.yml that will provision
- storage for tfstates
- keyvault for service principal details
- assign access for serviceconnection to keyvault and owner

require parameters:
Service Connection Name
Service Connection Object Id
Subscription Id

2

Create Service principal for terraform
az ad sp create-for-rbac --name "SP_KK_dev" --role contributor --scopes /subscriptions/$subscriptionId

3

Provision service principal and storage data to keyvault

Setup storage for terraform state



provision tenant id
provision subscription id
service_connection_object_id

+
