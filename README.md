https://aex.dev.azure.com/me

1 
Run pipeline be-storage-pipeline.yml that will provision
- storage for tfstates
- keyvault for service principal details
- assign access for serviceconnection to keyvault and owner

require parameters:
Service Connection Name
Service Connection Object Id
Admin Object Id
Subscription Id

2

Create Service principal for terraform
az ad sp create-for-rbac --name "SP_KK" --role contributor --scopes /subscriptions/$subscriptionId

3

Provision service principal and storage data to keyvault

az keyvault secret set --vault-name keyvault --name ARMCLIENTID --value ""
az keyvault secret set --vault-name keyvault --name ARMCLIENTSECRET --value ""
az keyvault secret set --vault-name keyvault --name ARMSUBSCRIPTIONID --value ""
az keyvault secret set --vault-name keyvault --name ARMTENANTID --value ""
az keyvault secret set --vault-name keyvault --name ARMACCESSKEY --value ""

Setup storage for terraform state



provision tenant id
provision subscription id
service_connection_object_id

+


X.

fix access policies