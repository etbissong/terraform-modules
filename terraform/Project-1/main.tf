provider "aws" {
  region = "us-east-1"
  access_key = "AKIAW3DCE5XXBWIFCKXY"
  secret_key = "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"
}

resource "aws_vpc" "my-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "prod-vpc"
  }
}

resource "aws_subnet" "subnet-1" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "prod-subnet"
  }
}

#resource "aws_instance" "my-first-server" {
#  ami           = "ami-085925f297f89fce1"
#  instance_type = "t2.micro"
#  tags = {
#    #Name = "ubuntu-server"
#  }
#}