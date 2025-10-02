resource "aws_instance" "expense" {
    ami = "ami-08982f1c5bf93d976"
    instance_type = "t2.micro"
    count = length(var.instance_names)
    vpc_security_group_ids = [aws_security_group.mysg.id]

    # tags = {
    #   Name = var.instance_names[count.index]
    # }

    tags = merge(
      var.common_tags,
      {
      Name = var.instance_names[count.index]
      }
    )

    root_block_device {
      volume_size = 15
    }
  
}

resource "aws_security_group" "mysg" {
    name = "mln-sf"
    description = "allow port number 22"

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    # tags = {
    #   Name = "My-SG"
    # }

    tags = merge(
      var.common_tags,
      {
      Name = "My-SG"
      }
    )
  
}
