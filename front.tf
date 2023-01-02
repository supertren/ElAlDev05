resource "aws_instance" "front" {
     ami = "ami-0574da719dca65348"
     instance_type = "t2.micro"
     subnet_id = flatten(data.aws_subnets.example.ids)
     tags = { Name = "front_${var.environment}" }  
 }
