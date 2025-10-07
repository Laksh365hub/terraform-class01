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

    tags = {
      Name = "My-SG"
    }
  
}


resource "aws_instance" "myec2" {
    ami = "ami-08982f1c5bf93d976"
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.mysg.id]

    tags = {
      Name = "My-ec2-instance"
    }
    root_block_device {
      volume_size = 15
    }
  
}