# インストールした時のメモ
初期パスワードでのログインが何故か拒否られた。(argocd-serverのpod名がパスワードになるらしい)

下記の記事を参考に、

`
$ kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.pas -drd}" | base64
`

で自動で作成されるsecretからパスワード取得したらログイン出来た。

(多分2.0から仕様が変わったのかも)

https://qiita.com/none_ses/items/9f8b5f4617ed33ec20a1