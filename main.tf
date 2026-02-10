module "devlopment-infra" {
  source = "./Infra-app-config"
  env = devlopment
  instance_count = 1
  instance_type = "t2.micro"
  ec2_ami_id = "ami-0dhehjdkd"
}

module "production-infra" {
  source = "./Infra-app-config"
  env = production
  instance_count = 2
  instance_type = "t2.medium"
  ec2_ami_id = "ami-0dhehjdkd"
}

module "staging-infra" {
  source = "./Infra-app-config"
  env = staging
  instance_count = 1
  instance_type = "t2.small"
  ec2_ami_id = "ami-0dhehjdkd"
}
