module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"
  instance_name = "sonar"
  instance_type = "t2.micro"
  ami = "ami-0574da719dca65348"
  subnet_id = "${element(module.vpc.private_subnets, 0)}"
}