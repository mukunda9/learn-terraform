terraform {
  backend "s3" {
    bucket = "terrafrom71"
    key= "s3-state/terraform.tfstate"
    region = "us-east-1"
  }
}
resource "aws_instance" "ec2" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0730089cc7ff79932"]
  tags = {
    name="test"
  }
}