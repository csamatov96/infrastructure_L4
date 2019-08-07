terraform {
  backend "s3" {
    bucket = "infrastructure-april-chyngyzkan"
    region = "us-east-2"
    key    = "infra.state"

  }
}