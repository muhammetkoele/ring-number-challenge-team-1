data "aws_ami" "ubuntu_image" {
  owners = [var.owner_id] 
  most_recent = true
  filter {
    name = "name"
    values = [var.ami_name]
  }
  filter {
    name = "architecture"
    values = ["x86_64"]
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

data "aws_secretsmanager_secret" "tf_ring_number_challenge_github_access_token" {
    name = "ring-number-challenge-github-access-token"
}

data "aws_secretsmanager_secret_version" "tf_ring_number_challenge_github_access_token_secret_version" {
    secret_id = data.aws_secretsmanager_secret.tf_ring_number_challenge_github_access_token.id
}
