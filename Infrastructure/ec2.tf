# Key pair (login)

resource aws_key_pair deployer {
  key_name   = "${var.env}-infra-key"
  public_key = file("terra-key-ec2.pub")

  tags = {
    Environment = var.env
  }
  
}

# VPC & Security Group
resource aws_default_vpc default{

}

resource aws_security_group my_seurity_group {
  name = "${var.env}-infra-sg"
  description = "this will add TF generates SG"
  vpc_id = aws_default_vpc.default.id 

  #inbound rules

  ingress {
      from_port = 80
      to_port = 80
      protocol = "TCP"
      cidr_blocks = ["0.0.0.0/0"]

  }
  #outbound rules
  egress {
     from_port = 0
     to_port = 0
     protocol = "-1"
     cidr_blocks = ["0.0.0.0/0"]
     description = "all open"
  }

  tags = {
    name = "${var.env}-infra-sg"
  }
}
# ec2 instance 

resource "aws_instance" "my_instance" {
    count = var.instance_count
    key_name = aws_key_pair.deployer.key_name
    security_groups = [aws_security_group.my_seurity_group.name]
    instance_type = var.instance_type
    ami = var.ec2_ami_id #ubuntu
    user_data = file("install_nginx.sh")

    root_block_device {
       volume_size = var.env == 10
       volume_type = "gp3"   
    }

    tags = {
        Name = "${var.env}-infra-app-ec2"
        Environment = var.env
    }  
}
