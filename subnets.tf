### Criando uma Sub-net Pública ###
resource "aws_subnet" "khomp_public_1a" {
  vpc_id                  = aws_vpc.khomp_test_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 1)
  availability_zone       = "${data.aws_region.current.name}a"
  map_public_ip_on_launch = true

  tags = {
    Departament  = "Cloud"
    Organization = "Infrestructure and Operations"
    Project      = "VPC"
    Environment  = "HML"
  }
}

## Criando uma Sub-net Privada ###
resource "aws_subnet" "khomp_private_1a" {
  vpc_id                  = aws_vpc.khomp_test_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 2)
  availability_zone       = "${data.aws_region.current.name}a"
  map_public_ip_on_launch = true

  tags = {
    Departament  = "Cloud"
    Organization = "Infrestructure and Operations"
    Project      = "VPC"
    Environment  = "HML"
  }
}
