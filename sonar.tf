locals {
  subnets = concat("${data.aws_subnets.example.ids}")
}

resource "aws_instance" "sonar" {
    ami = "ami-0574da719dca65348"
    subnet_id = local.subnets[count.index]
    instance_type = "t2.micro"
    tags = { Name = "sonar_${var.environment}" }  
}
