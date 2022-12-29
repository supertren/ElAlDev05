module "ec2_instance" {
  instance_name = "sonar"
  source = "github.com/terraform-community-modules/tf_aws_ec2_instance"
  instance_type = "t2.micro"
  ami_id = "ami-0574da719dca65348"
  subnet_id = "${element(module.vpc.private_subnets, 0)}"
}