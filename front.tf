resource "aws_instance" "front" {
     ami = "ami-0574da719dca65348"
     subnet_id = "${data.aws_subnets.example.ids}"
     instance_type = "t2.micro"
     tags = { Name = "${var.environment}" }  
 }
