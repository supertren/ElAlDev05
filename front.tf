resource "aws_instance" "front" {
    ami = "ami-0574da719dca65348"
    subnet_id = element(data.aws_vpcs.foo.ids, 0)
    instance_type = "t2.micro"
    tags = { Name = "${var.environment}" }  
}
