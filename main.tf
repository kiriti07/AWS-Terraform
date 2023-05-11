
resource "aws_instance" "App_instance" {
  ami           = "ami-0fdea1353c525c182"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.example.key_name
  security_group_names = [aws_security_group.example.name]

  tags = {
    Name = "WebAPP"
  }
}

  provisioner "local-exec" {
    command = "mkdir -p ~/.ssh && touch ~/.ssh/id_rsa.pub"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod 600 ~/.ssh/id_rsa.pub"
    ]
  }

resource "aws_key_pair" "example" {
  key_name   = "keypair-webapp"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_security_group" "example" {
  name        = "securitygroup-webapp"
  description = "Allow SSH and HTTP traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
