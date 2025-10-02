variable "ami_id" {
    type = string
    default = "ami-08982f1c5bf93d976"
    description = "This is the ami_id"  
}

variable "instance_type" {
    type = string
    default = "t2.micro"
    description = "This is instance type"
}

variable "tags" {
    type = map
    default = {
        Name = "backend"
        Project = "expense"
        Component = "backend"
        Environment = "Dev"
        Terraform = "true"
    }  
}

variable "sg_name" {
    type = string
    default = "allow-ssh"  
}

variable "sg_description" {
    type = string
    default = "allow ssh portnumber 22"  
}

variable "from_port" {
    type = number
    default = 22  
}

variable "to_port" {
    type = number
    default = 22  
}

variable "protocol" {
    type = string
    default = "tcp"  
}

variable "ingress_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

variable "volume_size" {
    type = number  
}

variable "enviroment" {
    default = "dev"
    type = string  
}