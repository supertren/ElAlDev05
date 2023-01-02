resource "aws_instance" "front" {
     ami = "ami-0574da719dca65348"
     instance_type = "t2.micro"
     for_each = data.aws_subnets.example.ids
     subnet_id = each.value
     tags = { Name = "front_${var.environment}" }  
 }
