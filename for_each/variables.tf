variable "instances" {
    type = map 
    default = {
        mysql = "t2.small"
        backend = "t2.micro"
        frontend = "t2.micro"
    }  
}

variable "domain_name" {
    default = "daws81s.online"
  
}

variable "zone_id" {
    default = "Z0951733247NJS9XF1LII"
}