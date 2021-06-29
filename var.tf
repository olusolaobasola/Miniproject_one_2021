
variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "irelandkey"
}

variable "mapPublicIP" {
  default = "true"
}

variable "tag_name" {
  default = ["tool_sev_1", "tool_sev_2", "build_sev"]
}

variable "role" {
  default = "digital_team"
}

variable "instance_count" {
  default = "3"
}

variable "availabilityZone1" {
  default = "eu-west-1a"
}
variable "availabilityZone2" {
  default = "eu-west-1b"
}
variable "availabilityZone3" {
  default = "eu-west-1c"
}

variable "aws_region" {
  default = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
}

variable "ami" {
  default = ["ami-0f89681a05a3a9de7", "ami-00323dab46b8dec86", "ami-0a8e758f5e873d1c1"]
}

variable "subnet_ids" {
  default = ["subnet-e1efdd87", "subnet-b00805f8", "subnet-c3067999"]
}

variable "instanceTenancy" {
  default = "default"
}
variable "dnsSupport" {
  default = "true"
}
variable "dnsHostNames" {
  default = "true"
}
variable "vpcCIDRblock" {
  default = "172.31.0.0/16"
}

variable "ingressCIDRblock" {
  type    = list(any)
  default = ["0.0.0.0/0"]
}
