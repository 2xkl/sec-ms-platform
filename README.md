utils
https://aex.dev.azure.com/me

1 
Run local backend-storage or
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

helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx

provision tenant id
provision subscription id
service_connection_object_id

+

argocd handler
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

kubectl port-forward svc/argocd-server -n argocd 8080:443


helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update

helm install nginx-ingress ingress-nginx/ingress-nginx \
  --create-namespace \
  --namespace ingress-nginx



exprt kubeconfiga do taksa na azure devops self hosted agent


X.

fix access policies

argocd app create users-api   --repo https://github.com/2xkl/sec-ms-platform   --path k8s/manifests/users-api   --dest-server https://kubernetes.default.svc   --dest-namespace default   --revision f/infra_cleanup 
