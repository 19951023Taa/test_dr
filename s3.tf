module "terraform_bucket" {
  count  = var.env == "pd" ? 1 : 0
  source = "./module/s3"
  bucket = "terraform.testdr.bucket"
}