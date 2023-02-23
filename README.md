1. 手動でs3を作成
2. _XX.tfbackendのbucket名を作成したS3に変更
3. import 例 ↓
terraform import -var-file=_pd.tfvars module.terraform_bucket[0].aws_s3_bucket.this terraform.testdr.bucket
※importするとS3にtfstateが作成される


terraform plan -var-file=_pd.tfvars