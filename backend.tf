terraform {
    backend "s3" { #
        bucket = "infrastructure-chyngyzkan" #paste whatever bucket u created through AWS-CLI
        region =  "us-east-1" #its region where it's located
        key = "infra.tfstate" #its new name
    }
}