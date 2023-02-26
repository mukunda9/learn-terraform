resource "aws_instance" "frontend" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0730089cc7ff79932"]
  tags = {
    name = "frontend"
  }
}
resource "aws_route53_record" "frontend" {
  zone_id = "Z08448621CU0UQF90HZOH"
  name    = "frontend-dev.devops71m.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}
resource "aws_instance" "mongodb" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0730089cc7ff79932"]
  tags = {
    name = "mongodb"
  }
}
resource "aws_route53_record" "mongodb" {
  zone_id = "Z08448621CU0UQF90HZOH"
  name    = "mongodb-dev.devops71m.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}
resource "aws_route53_record" "catalogue" {
  zone_id = "Z08448621CU0UQF90HZOH"
  name    = "catalogue-dev.devops71m.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}
resource "aws_instance" "catalogue" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0730089cc7ff79932"]
  tags = {
    name = "catalogue"
  }
}
resource "aws_route53_record" "user" {
  zone_id = "Z08448621CU0UQF90HZOH"
  name    = "user-dev.devops71m.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}
resource "aws_instance" "user" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0730089cc7ff79932"]
  tags = {
    name = "user"
  }
}
resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z08448621CU0UQF90HZOH"
  name    = "rabbitmq-dev.devops71m.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}

resource "aws_instance" "rabbitmq" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0730089cc7ff79932"]
  tags = {
    name = "rabbitmq"
  }
}
resource "aws_route53_record" "mysql" {
  zone_id = "Z08448621CU0UQF90HZOH"
  name    = "mysql-dev.devops71m.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}
resource "aws_instance" "mysql" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0730089cc7ff79932"]
  tags = {
    name = "mysql"
  }
}
resource "aws_route53_record" "cart" {
  zone_id = "Z08448621CU0UQF90HZOH"
  name    = "cart-dev.devops71m.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}
resource "aws_instance" "cart" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0730089cc7ff79932"]
  tags = {
    name = "cart"
  }
}
resource "aws_route53_record" "shipping" {
  zone_id = "Z08448621CU0UQF90HZOH"
  name    = "shipping-dev.devops71m.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}
resource "aws_instance" "shipping" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0730089cc7ff79932"]
  tags = {
    Name = "shipping"
  }
  name = "my-ec2-instance"
}
resource "aws_route53_record" "payment" {
  zone_id = "Z08448621CU0UQF90HZOH"
  name    = "payment-dev.devops71m.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}
resource "aws_instance" "payment" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0730089cc7ff79932"]
  tags = {
    name = "payment"
  }
}
resource "aws_route53_record" "redis" {
  zone_id = "Z08448621CU0UQF90HZOH"
  name    = "redis-dev.devops71m.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}
resource "aws_instance" "redis" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0730089cc7ff79932"]
  tags = {
    name = "redis"
  }
}