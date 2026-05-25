locals {
  common_tags={
      owner= "DevOps"
      service="Backend"
  }
}
 # Resource Block
  resource "aws_instance" "ec2demo" {
  ami = "ami-0756206b8321c60d1" # Amazon Linux in us-east-1, update as per your region
  instance_type = lookup(var.instances,terraform.workspace)
  tags=local.common_tags
}