data "aws_ami" "ubuntu_image" {
  owners = [var.owner_id] 
  most_recent = true
  filter {
    name = "name"
    values = [var.ami_name]
  }
}

data "aws_vpc" "tf_data_vpc" {
  filter {
    name   = "tag:Name"
    values = [var.vpc_name]
  }
}

data "aws_subnet" "public_a" {
  filter {
    name   = "tag:Name"
    values = [var.public_subnet_a]
  }
}

data "aws_subnet" "privat_a" {
  filter {
    name   = "tag:Name"
    values = [var.private_subnet_a]
  }
}
