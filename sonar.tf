data "aws_subnet_ids" "private" {
  vpc_id = var.vpc_id

  tags = {
    Tier = "Private"
  }
}

resource "aws_instance" "app" {
  for_each      = data.aws_subnet_ids.private.ids
  ami = "ami-0574da719dca65348"
  instance_type = "t2.micro"
  subnet_id     = each.value
}
