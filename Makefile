default:
	helm dependency update kubernetes/argocd/
	helm dependency update kubernetes/argocd-apps/
	helm upgrade --install argocd kubernetes/argocd/ --namespace argocd --create-namespace
	helm upgrade --install argocd-apps kubernetes/argocd-apps/ --namespace argocd

destroy:
	helm uninstall argocd --namespace argocd
	helm uninstall argocd-apps --namespace argocd