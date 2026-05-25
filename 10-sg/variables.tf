variable "project" {
  default = "roboshop"
}

variable "environment" {
  default = "dev"
} 

variable "sg_names" {
  type = list
  default = [
      # Databases
      "mongodb", "redis", "mysql", "rabbitmq",
      # Backend
      "catalogue", "user", "cart", "shipping", "payment",
      #Backend ALB
      "backend_alb",
      #Frontend ALB
      "forntend_alb",
      #Bastion
      "bastion"

  ]
}