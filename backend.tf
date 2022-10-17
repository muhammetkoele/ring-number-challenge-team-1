terraform {
    backend "s3" {
        bucket = "ta-terraform-tfstates-rima"
        key = "ring-number-challenge/terraform.tfstates"
        dynamodb_table = "terraform-lock"
    }
}