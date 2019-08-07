terraform {
  backend "s3" {
    bucket = "infrasture-april-chyngyz"
    region = "us-east-2"
    key    = "infra.state"

  }
}