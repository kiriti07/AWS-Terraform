resource "aws_instance" "App_instance" {
  ami           = "ami-0fdea1353c525c182"
  instance_type = "t2.micro"

  tags = {
    Name = "WebAPP"
  }
}
