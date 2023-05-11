
resource "aws_instance" "App_instance" {
  ami           = "ami-0fdea1353c525c182"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.example.key_name

  tags = {
    Name = "WebAPP"
  }
}

resource "aws_key_pair" "example" {
  key_name   = "keypair-webapp"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCfrsMvDsLjdSMzd4jATxC6lzOi7EcR70yE98LsAOrW90r5p2/JMuzJw40NjryzI0iJHK4/7y47rEd4fCY0pig/lnTJ4Nvj+uFr6Zyum1yeai6fdr8IvMq8AVIjwcQSY3e0cqUdgQR5oMWPVkp0VJjiTH7/SjXGj1LRxnRP2X/obuNzA6cHHNZGNFIpX5lxDv0AvbLmzxCb2HB1k46hIGCfUICa6ZT/FxcaW4qJONcOwJagg2gP+hAvSrzSBeJnMySVI7/DiJPVngAh6BvVjzhzGO+iBcWEfOlb55UUaNdW4vbJ5WvZYl0p+IUhyxy6/QrejmEOggQjOAyOSyJwMTXkjfNNCMu4PI0HYwN8jZZulOXnpctmfBNDGS6TEISYSNieTqO2vizZqRjTYsvckiOBUPWQ+ADVH+veV5yBIMw9c5w9QB93FMs7YJJR+0Y0t6VWY274hLf0ukJCnfTMb9yM3gR1UAUB5pp1k2W6qS+cDyBlOU43KYU92avfRX1Vyj8= ec2-user@ip-172.31.11.126.ap-south-1.compute.internal"
}
