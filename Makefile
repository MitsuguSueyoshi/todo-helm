.PHONY: to-argo
to-argo: ## argoCDの管理画面へのポートフォワード
	kubectl port-forward svc/argocd-server 8080:443 -n argocd