resource "aws_instance" "Public_VPC_Instance" {
  ami = "ami-010aff33ed5991201"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.prod-subnet-public-1.id}"
  vpc_security_group_ids = ["${aws_security_group.ssh-allowed.id}"]
  key_name = "${aws_key_pair.jumpbox-key.id}"

  tags = {
    Name = "Public_VPC_Instance"
  }
}

resource "aws_key_pair" "jumpbox-key" {
  key_name   = "jumpbox-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDZkemRevP6x2kbVGQ6KN3h3/TLoTP+dccNvJdvEJ8tNn4YcHYlwvy2FCGqIYWaXO+lJT5K8szYovr4jgSVb3l81H+3Hayq3jK2QJ7SHzsgRzXdV5LCE/LbB3YXrnXyPYnFy2q9luE4zi1+nfFx0eAeNqcnKMjctSX+9uEdYLhXD38u4hI+aSYNv8mikl8Ea79ozHJ9qVnGBdpxmx/oXzyBAB6OMnOKfYk5X27CSVupa36aYXWthy8ncuxRoUHPNR0VEEuterrAB1brBF2r4ShOHR3GwqcpBNReZxl/IvCa2X6dSP/Wl0xwotoS38dy42NW/TVdbQ1tn/vlzPFr1lqb ec2-user@ip-172-31-45-91.ap-south-1.compute.internal"
}

