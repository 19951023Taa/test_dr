1. 手動でs3を作成
2. _XX.tfbackendのbucket名を作成したS3に変更
3. import 例 ↓
terraform import -var-file=_pd.tfvars module.terraform_bucket[0].aws_s3_bucket.this terraform.testdr.bucket
※importするとS3にtfstateが作成される

terraform init -reconfigure -backend-config=pd.s3.tfbackend
terraform plan -var-file=_pd.tfvars

※Terraformで複数リージョンにリソースを作成する際、provider "aws"を使用するが、
moduleでproviderを使用する際、module側でもrequired_providersを設定しないとwarningが出力される(無視しても別に問題はない)
https://zenn.dev/oke_py/articles/048ffb5135c4b9ece974