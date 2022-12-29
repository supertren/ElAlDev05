resource "aws_instance" "sonar" {
    ami = "ami-0574da719dca65348"
    subnet_id = "${var.Private_subnet_1A}"
    vpc_id = "${var.project_name}-${var.environment}-${var.vpc_name}"
    tags = { Name = "${var.environment}" }  
}
