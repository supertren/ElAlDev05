resource "aws_instance" "sonar" {
    ami = "ami-0574da719dca65348"
    subnet_id = flatten(data.aws_subnets.example.[0]ids)
    instance_type = "t2.micro"
    tags = { Name = "sonar_${var.environment}" }  
}
