terraform {
  backend "s3" {
    bucket = "ta-terraform-tfstates-2400-8627-2411"
    key    = "ring-number-challenge/terraform.tfstates"
    dynamodb_table = "terraform-lock"
  }
}
