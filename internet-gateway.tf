resource "aws_internet_gateway" "khomp-igw" {
  vpc_id = aws_vpc.khomp_test_vpc.id

  tags = {
    Departament  = "Cloud"
    Organization = "Infrestructure and Operations"
    Project      = "VPC"
    Environment  = "HML"
  }
}