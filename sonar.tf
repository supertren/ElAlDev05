resource "aws_instance" "sonar" {
    ami = "ami-0574da719dca65348"
    instance_type = "t2.micro"
    tags = { Name = "${var.environment}" }  
}
