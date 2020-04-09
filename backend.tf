terraform {
  backend "s3" {
    bucket = "mystate-file"
    key    = "state/div/state-file"
    region = "us-east-1"
    shared_credentials_file = "/home/salah/ITI/terraform/day1/credentials"
    profile = "test"

  }
}