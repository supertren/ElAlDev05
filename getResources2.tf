data "aws_subnets" "private" {
  filter {
    name   = "agency-management-vpc"
    values = [var.vpc_id]
  }

  tags = {
    vpc_name  = "agency-management-vpc"
     }
}

resource "aws_instance" "app" {
  for_each      = toset(data.aws_subnets.private.ids)
  ami           = "ami-0574da719dca65348"
  instance_type = "t2.micro"
  subnet_id     = each.value
}