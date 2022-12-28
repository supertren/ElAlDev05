resource "aws_instance" "front-dev" {
    ami = "ami-0574da719dca65348"
    instance_type = "t2.large"
    vpc_id = "${var.project_name}-${var.environment}-${var.vpc_name}"
    tags = { Name = "${var.environment}" }  
}