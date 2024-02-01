resource "aws_eip" "khomp_ngw_elastic_ip_1a" {
  vpc = true
  tags = {
    Departament  = "Cloud"
    Organization = "Infrestructure and Operations"
    Project      = "VPC"
    Environment  = "HML"

  }
}

resource "aws_nat_gateway" "khomp_ngw_public_1a" {
  subnet_id     = aws_subnet.khomp_public_1a.id
  allocation_id = aws_eip.khomp_ngw_elastic_ip_1a.id

  tags = {
    Departament  = "Cloud"
    Organization = "Infrestructure and Operations"
    Project      = "VPC"
    Environment  = "HML"

  }
}