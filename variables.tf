variable "owner_id" {
  description = "Owner of the ami"
}

variable "ami_name" {
  description = "The ami name"
}

variable "instance_type" {
  description = "The instance type for our instance"
}

variable "keypair" {
  description = "The name of the key-pair to connect to my instances "
}

variable "aws_region" {
  description = "The region of our infrastructure"
}

variable "vpc_name" {
  description = "The name of our VPC"
}

variable "public_subnet_a" {
  description = "The Subnet Name of the AZ A"
}

variable "private_subnet_a" {
  description = "The Subnet Name of the AZ A"
}

variable "github_branch_name" {
  description = "Branch name to pull from when instance is created"
}

variable "github_user_name" {
}

variable "github_user_email" {
}
