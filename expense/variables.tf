variable "instance_names" {
    type = list(string)
    default = [ "mysql","backend","frontend" ]
  
}

variable "common_tags" {
  type = map 
  default = {
    Project = "expense"
    Environment = "dev"
    Terraform = "true"
  }
}

variable "zone_id" {
  type = string
  default = "Z0951733247NJS9XF1LII"  
}

variable "domain_name" {
  default = "daws81s.online"
  
}