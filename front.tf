resource "aws_instance" "front" {
     for_each = data.aws_subnets.example.ids
     ami = "ami-0574da719dca65348"
     instance_type = "t2.micro"
     subnet_id = each.value
     tags = { Name = "${var.environment}" }  
 }
