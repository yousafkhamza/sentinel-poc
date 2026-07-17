variable "backend_vpc_id" {
  type = string
}

variable "backend_node_security_group_id" {
  description = "The EKS-managed node SG for eks-backend, which we add extra ingress rules to."
  type        = string
}

variable "gateway_vpc_cidr" {
  description = "CIDR of vpc-gateway - only this range may reach the backend's app port."
  type        = string
}

variable "backend_app_port" {
  type    = number
  default = 8080
}

variable "tags" {
  type    = map(string)
  default = {}
}
