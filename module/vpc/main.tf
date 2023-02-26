resource "aws_vpc" "this" {
  cidr_block           = var.cidr_block
  instance_tenancy     = "default"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "${var.project}-${var.env}-vpc"
  }
}

resource "aws_internet_gateway" "this" {
  vpc_id            = aws_vpc.this.id

  tags = {
    Name = "${var.project}-${var.env}-igw"
  }
}