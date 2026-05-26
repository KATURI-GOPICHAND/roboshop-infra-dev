variable "project" {
  default = "roboshop"
}

variable "environment" {
  default = "dev"
}

variable "sg_names" {
  type = list(any)
  default = [
    # Databases
    "mongodb", "redis", "mysql", "rabbitmq",
    # Backend
    "catalogue", "user", "cart", "shipping", "payment",
    #Backend ALB
    "backend_alb",
    #Frontend ALB
    "frontend_alb",
    #Bastion
    "bastion"

  ]
}