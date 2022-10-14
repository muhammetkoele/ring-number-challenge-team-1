terraform {
    backend "s3" {
        bucket          = "ta-terraform-tfstates-439272626435"
        key             = "sprint1/week6/day4/training-terraform/terraform.tfstate"
        region          = "eu-central-1"
        dynamodb_table  = "terraform-lock"
    }
}