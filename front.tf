resource "aws_instance" "front" {
     ami = "ami-0574da719dca65348"
     for_each = data.aws_subnets.example.ids
     subnet_id = each.value
     instance_type = "t2.micro"
     tags = { Name = "${var.environment}" }  
 }
