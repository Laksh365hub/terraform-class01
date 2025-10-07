variable "instance_names" {
    type = list(string)
    default = [ "mysql", "backend", "frontend" ]  
}

variable "environment" {
    default = "prod"
  
}

variable "project_name" {
    default = "expense"
  
}

variable "common_tags" {
    default = {
        Project = "expense"
        Environment = "dev"
        Terraform = "true"
    }
  
}