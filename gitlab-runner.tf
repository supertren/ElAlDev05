resource "aws_instance" "gitlab-runner" {
     ami = "ami-0574da719dca65348"
     instance_type = "t2.micro"
     subnet_id = flatten(data.aws_subnets.example.ids)[0]
     tags = { Name = "${var.environment}_gitlab-runner" }  
 }
