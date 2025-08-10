init:
	terraform init

fmt:
	terraform fmt

# ファイルの構文チェック
validate:
	terraform validate

plan:
	terraform plan

apply:
	terraform apply

# デプロイしたリソースを削除する
destroy:
	terraform destroy

# デプロイしたリソースを確認する。中身はterraform.tfstateに入ってる
show:
	terraform show