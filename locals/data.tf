data "aws_ami" "info" {
    most_recent = true
    owners = ["529088275803"]

    filter {
      name = "name"
      values = ["My-AMI"]

    }

    filter {
      name = "root-device-type"
      values = ["ebs"]

    }

    filter {
      name = "virtualization-type"
      values = ["hvm"]
    }
}