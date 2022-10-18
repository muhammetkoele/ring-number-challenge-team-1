terraform {
  backend "s3" {
    bucket         = "ta-terraform-tfstates-779394131831"
    key            = "lab/training-asg/terraform.tfstate"
    dynamodb_table = "terraform-lock"
  }
}