data "aws_subnet" "vpc_live" {
  for_each = toset(data.aws_subnets.vpc_live.ids)
  id       = each.key
}



resource "aws_ec2_transit_gateway_vpc_attachment" "vpc_live" {
  subnet_ids         = [for subnet_ids in { for s in data.aws_subnet.ids : s.availability_zone => s.id... } : subnet_ids[0]]
  transit_gateway_id = var.tgw_id
  vpc_id             = var.vpc_id
}

# resource "aws_instance" "app" {
#   for_each      = toset(data.aws_subnets.private.ids)
#   ami           = "ami-0574da719dca65348"
#   instance_type = "t2.micro"
#   subnet_id     = each.value
# }