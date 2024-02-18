provider "aws" {
    profile = "udemy-terraform-terraform"
    region = "ap-northeast-1"
}

resource "aws_instance" "hello-world" {
    ami = "ami-0b5c74e235ed808b9"
    instance_type = "t2.micro"
}