terraform {
  backend "s3" {
    bucket = "talent-academy-labs-terraform-tfstates-342055123193"
    key    = "week6/ring-number-challenge/terraform.tfstates"
    dynamodb_table = "terraform-lock"
  }
}