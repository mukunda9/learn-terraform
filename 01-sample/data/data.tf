data "aws_ami" "ami" {
  executable_users = ["Centos-8-DevOps-Practice"]
  most_recent      = true
  owners           = ["973714476881"]
}
output "ami_id" {
  value =data.aws_ami.ami.image_id
}