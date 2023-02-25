locals {
  common_tags={
      owner= "DevOps"
      service="Backend"
  }
}


 # Resource Block
resource "aws_instance" "ec2demo" {
  ami = "ami-0d8d9a2de1bcdb066" # Amazon Linux in us-east-1, update as per your region
  instance_type = var.instancetype
  tags=local.common_tags
}