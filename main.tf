resource "aws_instance" "App_instance" {
  ami           = "ami-0fdea1353c525c182"
  instance_type = "t2.micro"
  key_name      = "cicd-jenkins"
  connection {
    type = "ssh"
    user = "ec2-user"
    host = self.public_ip
    private_key  = file("keypair/cicd-jenkins.pem")
}
provisioner "remote-exec" {
  inline = [ 
    "sudo yum install tomcat -y"
   ]
}
  tags = {
    Name = "App"
  }
}

resource "aws_instance" "Web_instance" {
  ami           = "ami-0fdea1353c525c182"
  instance_type = "t2.micro"
  key_name      = "cicd-jenkins"
  connection {
    type = "ssh"
    user = "ec2-user"
    host = self.public_ip
    private_key  = file("keypair/cicd-jenkins.pem")
}
provisioner "remote-exec" {
  inline = [ 
    "sudo yum install tomcat -y"
   ]
}
  tags = {
    Name = "Web"
  }
}
