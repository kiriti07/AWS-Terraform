resource "aws_instance" "App_instance" {
  ami           = "ami-0fdea1353c525c182"
  instance_type = "t2.micro"

  tags = {
    Name = "Example Instance 1"
  }
}
resource "aws_key_pair" "terraform_ec2_key" {
	key_name = "terraform_ec2_key"
	public_key = file(".ssh/webapp-key.pub")
}
