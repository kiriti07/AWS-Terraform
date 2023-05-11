resource "aws_instance" "App_instance" {
  ami           = "ami-0fdea1353c525c182"
  instance_type = "t2.micro"

  tags = {
    Name = "WebAPP"
  }
}

resource "aws_key_pair" "example" {
  key_name   = "my-key-pair"
  public_key = file("~/.ssh/id_rsa.pub")
}
