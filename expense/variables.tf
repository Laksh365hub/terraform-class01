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
  default = "Z06151782LF4FU1FI7H9I"  
}

variable "domain_name" {
  default = "daws81s.online"
  
}