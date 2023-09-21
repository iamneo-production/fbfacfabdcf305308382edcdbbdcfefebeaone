provider "aws" {
    region = "ap-northeasr-1"
}

resource "aws_instance" "example" {
    ami = ""
    instance_type = "t2.micro"
}

output "public_ip" {
    value = aws_instance.example.public_ip
}