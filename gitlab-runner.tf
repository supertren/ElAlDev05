# resource "aws_instance" "gitlab-runner" {
#     ami = "ami-0574da719dca65348"
#     subnet_id = "${data.aws_subnets.selected.id}"
#     instance_type = "t2.micro"
#     tags = { Name = "${var.environment}" }  
# }
