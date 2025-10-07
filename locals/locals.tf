locals {
    domain_name = "daws81s.online"
    zone_id = "Z0951733247NJS9XF1LII"
    instance_type = var.environment == "prod" ? "t2.micro" : "t2.small"
    instance_name = "dev"
}