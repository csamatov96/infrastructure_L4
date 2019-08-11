terraform {
    backend "s3"{
        bucket = "terraform-state-storage-chyngyzkan" #
        region =  "us-east-1" #
        key = "infrastructure.tfstate" #
    }
}