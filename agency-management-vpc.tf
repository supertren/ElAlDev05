module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "${var.project_name}-${var.environment}-${var.vpc_name}"
  cidr = "${var.cidr}"

  azs             = ["${var.azs1}", "${var.azs2}", "${var.azs3}"]
  private_subnets = ["${var.Private_subnet_1A}", "${var.Private_subnet_1B}", "${var.Private_subnet_2A}",  "${var.Private_subnet_2B}",  "${var.Private_subnet_3A}",  "${var.Private_subnet_3B}"]
  public_subnets  = ["${var.Public_subnet_1}", "${var.Public_subnet_2}", "${var.Public_subnet_3}"]
# intra_subnets =   ["10.0.51.0/24", "10.0.52.0/24", "10.0.53.0/24"]
  
  enable_nat_gateway = true
# enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = var.environment
    project_name = var.project_name
    vpc_name = var.vpc_name #agency-management-vpc
  }
}
