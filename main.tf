provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "three" {
  count         = 2
  ami           = "ami-00ca32bbc84273381"
  instance_type = "t3.micro"

  tags = {
    Name = "test-server"
  }
}
