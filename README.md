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

minikube service nginx-ingress-controller -n ingress-nginx --url

kubectl port-forward svc/argocd-server -n argocd 8080:443
  164  curl http://users-api.local
  165  kubectl logs -l app=ingress-nginx --tail=100
  166  kubectl get pods
  167  kubectl get ingress
  168  curl http://users-api.local
  169  kubectl port-forward svc/users 8080:80
  170  kubectl get pods -n ingress-nginx
  171  kubectl get ingress
  172  kubectl describe ingress users-api-ingress
  173  kubectl port-forward -n ingress-nginx svc/ingress-nginx-controller 8080:80
  174  kubectl get services
  175  kubectl get services --all-namespaces
  176  kubectl port-forward -n ingress-nginx svc/nginx-ingress-ingress-nginx-controller 8080:80
  177  kubectl logs -n ingress-nginx nginx-ingress-ingress-nginx-controller 
  178  kubectl get pod -n ingress-nginx
  179  kubectl logs -n ingress-nginxx nginx-ingress-ingress-nginx-controller-75fc9f4654-gnvlf
  180  kubectl logs -n ingress-nginx nginx-ingress-ingress-nginx-controller-75fc9f4654-gnvlf
  181  history
  182  curl http://users-api.local
  183  kubectl logs -n ingress-nginx nginx-ingress-ingress-nginx-controller-75fc9f4654-gnvlf
  184  curl http://users-api.local
  185  kubectl get pods -n ingress-nginx
  186  nslookup users-api.local
  187  kubectl describe ingress users-api-ingress
  188  kubectl get services --all-namespaces
  189  kubectl get svc -n ingress-nginx
  190  kubectl expose pod nginx-ingress-ingress-nginx-controller --name=nginx-ingress-controller --type=NodePort --port=80 --target-port=80 -n ingress-nginx
  191  kubectl get pods -n ingress-nginx
  192  kubectl expose deployment nginx-ingress-ingress-nginx-controller --name=nginx-ingress-controller --type=NodePort --port=80 --target-port=80 -n ingress-nginx
  193  kubectl get svc -n ingress-nginx
  194  minikube ip
  195  sudo minikube ip
  196  kubectl get services
  197  kubectl delete service hello
  198  kubectl get pods
  199  kubectl get deploy
  200  kubectl delete deploy hello
  201  kubectl get svc users
  202  nslookup users-api.local
  203  kubectl get pods -n ingress-nginx
  204  kubectl logs -n ingress-nginx nginx-ingress-ingress-nginx-controller-75fc9f4654-gnvlf
  205  kubectl get svc -n ingress-nginx
  206  curl http://users-api.local
  207  curl http://192.168.49.2:31725 
  208  kubectl get svc -n ingress-nginx
  209  curl http://10.108.33.188
  210  curl http://10.108.33.188/api/uses
  211  curl http://10.108.33.188/api/users
  212  curl users-api.local
  213  curl users-api.local/api/users
  214  kubectl get svc -n argocd
  215  ls
  216  cd k8s/
  217  cd manifests/
  218  cd argo/
  219  kubectl apply -f ingress.yaml 
  220  curl users-api.local/api/users
  221  curl users-api.
  222  curl argocd.local
  223  history

X.

fix access policies

argocd app create users-api   --repo https://github.com/2xkl/sec-ms-platform   --path k8s/manifests/users-api   --dest-server https://kubernetes.default.svc   --dest-namespace default   --revision f/infra_cleanup 
