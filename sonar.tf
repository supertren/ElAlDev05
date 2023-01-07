resource "aws_instance" "sonar" {
     ami = "ami-0574da719dca65348"
     instance_type = "t2.micro"
     subnet_id = flatten(data.aws_subnets.example.ids)[1]
     tags = { Name = "${var.environment}_sonar" }  
 }
