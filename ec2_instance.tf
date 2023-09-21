terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
        }
    }
}

provider "aws" {
    region = "ap-northeast-1"
    access_key = "AKIAURI7ZXKCJYXNEDUE"
    secret_key = "fbZ+1Jqn0XHsbxWPYqvbcQgcCW9Edaz9moIju1vl"
}

resource "aws_instance" "example" {
    ami = ""
    instance_type = "t2.micro"
}

output "public_ip" {
    value = aws_instance.example.public_ip
}