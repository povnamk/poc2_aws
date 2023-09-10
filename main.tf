terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

  }



}
#Configure aws provider
provider "aws" {
  region = "ap-southeast-2"
}

#Create EC2 instance
resource "aws_instance" "myec2"{
    ami = "ami-0bcf9688fa5e01340"
    instance_type = "t2.micro"
    tags = {
        Name = "EC2"
    }
}

#Show output
output "ipaddress"{
    value = aws_instance.myec2.public_ip
}
