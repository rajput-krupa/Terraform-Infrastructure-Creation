module "devlopment-infra" {
  source = "./Infrastructure"
  env = devlopment
  instance_count = 1
  instance_type = "t2.micro"
  ec2_ami_id = "ami-0dhehjdkd"
}

module "production-infra" {
  source = "./Infrastructure"
  env = production
  instance_count = 2
  instance_type = "t2.medium"
  ec2_ami_id = "ami-0dhehjdkd"
}

module "staging-infra" {
  source = "./Infrastructure"
  env = staging
  instance_count = 1
  instance_type = "t2.small"
  ec2_ami_id = "ami-0dhehjdkd"
}
