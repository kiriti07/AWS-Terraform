
resource "aws_instance" "App_instance" {
  ami           = "ami-0fdea1353c525c182"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.example.key_name
  security_group_names = [aws_security_group.example.name]

  tags = {
    Name = "WebAPP"
  }
}

resource "aws_key_pair" "example" {
  key_name   = "keypair-webapp"
  public_key = file("~/.ssh/id_rsa.pub")
}
