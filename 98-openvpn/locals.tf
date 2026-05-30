locals {
  ami_id = data.aws_ami.openvpn.id
  common_tags = {
    project     = var.project
    environment = var.environment
    terraform   = "true"
  }
  # public subnetbin 1a AZ
  public_subnet_id = split(",", data.aws_ssm_parameter.public_subnet_ids.value)[0]
  openvpn_sg_id    = data.aws_ssm_parameter.openvpn_sg_id.value
}

