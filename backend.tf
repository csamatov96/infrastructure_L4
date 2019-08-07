terraform {
  backend "s3" {
    bucket = "infrasture-april-levent"
    region = "us-east-1"
    key    = "infra.state"

  }
}