resource "aws_instance" "gitlab-runner" {
    ami = "ami-0574da719dca65348"
    instance_type = "t2.large"
    subnet_id = "${var.Private_subnet_1A}"
    tags = { Name = "${var.environment}" }  
}
