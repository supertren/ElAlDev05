data "aws_subnets" "private" {
  filter {
    name   = "vpc-id"
    values = [var.vpc_id]
  }

  tags = {
    vpc_name  = "agency-management-vpc"
     }
}

resource "aws_instance" "app" {
  for_each      = toset(data.aws_subnets.private.ids)
  ami           = var.ami
  instance_type = "t2.micro"
  subnet_id     = each.value
}