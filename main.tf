provider "aws" {
  region = "us-east-1" # Change to your region
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  key_name      = "MyKeyPair"             

  tags = {
    Name = "Prod"
  }
}
