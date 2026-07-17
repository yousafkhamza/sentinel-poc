terraform {
  required_version = ">= 1.11.0"

  backend "s3" {
    bucket       = "sentinel-poc-tfstate"
    key          = "envs/poc/terraform.tfstate"
    region       = "us-east-2"
    encrypt      = true
    use_lockfile = true
  }
}
