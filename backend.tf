terraform {
    backend "s3"{
        bucket = "infrastructure-april-vovaa"
        region =  "eu-west-1"
        key = "infra.state"
    }
}