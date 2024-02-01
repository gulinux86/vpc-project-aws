resource "aws_security_group" "khomp_security_group" {
  name        = "SSH connection"
  description = "VPC security group"
  vpc_id      = aws_vpc.khomp_test_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Departament  = "Cloud"
    Organization = "Infrestructure and Operations"
    Project      = "VPC"
    Environment  = "HML"
  }
}
