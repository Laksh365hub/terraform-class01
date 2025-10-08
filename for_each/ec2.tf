resource "aws_instance" "expense" {
    for_each = var.instances
    ami = data.aws_ami.aws_info.id
    instance_type = each.value
    vpc_security_group_ids = [aws_security_group.mysg.id]

    tags = {
        Name = each.key
    }
  
}

resource "aws_security_group" "mysg" {
    name = "mysg"
    description = "allow ssh"

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }
  
}