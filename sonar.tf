resource "aws_instance" "sonar" {
    ami = "ami-0574da719dca65348"
    subnet_id = "${var.Private_subnet_1A}"
    tags = { Name = "${var.environment}" }  
}
