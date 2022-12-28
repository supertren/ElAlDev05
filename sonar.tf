resource "aws_instance" "sonar" {
    ami = "ami-0574da719dca65348"
    instance_type = "t2.large"
    tags = { Name = "${var.environment}" }  
}