resource "aws_security_group" "mysg" {
    name = var.sg_name
    description = var.sg_description

    ingress {
        from_port = var.from_port
        to_port = var.to_port
        protocol = var.protocol
        cidr_blocks = var.ingress_cidr
        ipv6_cidr_blocks = ["::/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    tags = var.tags
  
}


resource "aws_instance" "myec2" {
    ami = var.ami_id
    instance_type = var.enviroment == "prod" ? "t2.large" : "t2.small"
    vpc_security_group_ids = [aws_security_group.mysg.id]

    tags = var.tags
    root_block_device {
      volume_size = var.volume_size
    }
  
}