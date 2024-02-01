
resource "aws_instance" "khom_instance" {
  ami                    = var.image_id
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.khomp_public_1a.id
  vpc_security_group_ids = [aws_security_group.khomp_security_group.id]

  tags = {
    Departament  = "Cloud"
    Organization = "Infrestructure and Operations"
    Project      = "VPC"
    Environment  = "HML"
  }
}
