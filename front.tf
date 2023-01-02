resource "aws_instance" "front" {
     for_each = ${data.aws_subnets.example.id}
     ami = "ami-0574da719dca65348"
     instance_type = "t2.micro"
     subnet_id = each.value
     tags = { Name = "sonar_${var.environment}" }  
 }
