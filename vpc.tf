resource "aws_vpc" "khomp_test_vpc" {
  cidr_block           = var.cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Departament  = "Cloud"
    Organization = "Infrestructure and Operations"
    Project      = "VPC"
    Environment  = "HML"
  }
}