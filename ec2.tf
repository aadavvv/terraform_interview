resource "aws_instance" "JenkinsInstance" {
  ami = "ami-010aff33ed5991201"
  instance_type = "t2.micro"
  tags = {
    Name = "Jenkins_Terraform_Instance"
  }
}
