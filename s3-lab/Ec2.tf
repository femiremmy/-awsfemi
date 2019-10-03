# Create a new instance of the latest Ubuntu 14.04 on an
# t2.micro node with an AWS Tag naming it "HelloWorld"

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "web" {
  ami           = "ami-09c61c4850b7465cb"
  instance_type = "t2.micro"

  tags = {
    Name = "First Trerraform EC2"
  }
}