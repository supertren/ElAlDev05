resource "aws_instance" "front-dev" {
    ami = "ami-0574da719dca65348"
    instance_type = "t2.large"
    tags = { Name = "${var.environment}" }  
}