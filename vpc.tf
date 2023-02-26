module "pd_vpc" {
  count      = var.env == "pd" ? 1 : 0
  source     = "./module/vpc"
  cidr_block = "10.0.0.0/16"
  project    = var.project
  env        = var.env
}

module "dr_vpc" {
  count      = var.env == "dr" ? 1 : 0
  source     = "./module/vpc"
  cidr_block = "15.0.0.0/16"
  project    = var.project
  env        = var.env
  providers = {
        aws = aws.dr
    }
}