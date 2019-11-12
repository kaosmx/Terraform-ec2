data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

data "aws_ami" "aws" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ami-08d489468314a58df"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["08d489468314a58df"] 
}