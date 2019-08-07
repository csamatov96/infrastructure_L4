terraform {
    backend "s3"{
        bucket = "infrastructure-april-chyngyzkan"
        region =  "eu-west-1"
        key = "infra.state"
    }
}