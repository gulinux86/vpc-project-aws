### Criação da Route table pública ###

resource "aws_route_table" "khomp_public_route_table" {
  vpc_id = aws_vpc.khomp_test_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.khomp-igw.id
  }

  tags = {
    Departament  = "Cloud"
    Organization = "Infrestructure and Operations"
    Project      = "VPC"
    Environment  = "HML"
    description  = "khomp_VPC"
  }
}

### Criação da Route table privada ###

resource "aws_route_table" "khomp_private_route_table" {
  vpc_id = aws_vpc.khomp_test_vpc.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.khomp_ngw_public_1a.id
  }

  tags = {
    Departament  = "Cloud"
    Organization = "Infrestructure and Operations"
    Project      = "VPC"
    Environment  = "HML"
    description  = "khomp_VPC"
  }
}

### Associando a route table com a subnet pública ###
resource "aws_route_table_association" "khomp_public_association_1a" {
  subnet_id      = aws_subnet.khomp_public_1a.id
  route_table_id = aws_route_table.khomp_public_route_table.id
}

### Associando a route table com a subnet privada ###
resource "aws_route_table_association" "khomp_private_association_1a" {
  subnet_id      = aws_subnet.khomp_private_1a.id
  route_table_id = aws_route_table.khomp_private_route_table.id
}
