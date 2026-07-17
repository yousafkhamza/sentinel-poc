variable "aws_region" {
  type    = string
  default = "us-east-2"
}

variable "azs" {
  type    = list(string)
  default = ["us-east-2a", "us-east-2b"]
}

variable "gateway_vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "backend_vpc_cidr" {
  type    = string
  default = "10.1.0.0/16"
}

variable "eks_public_access_cidrs" {
  description = "CIDRs allowed to reach the EKS API servers publicly (needed for GitHub-hosted runners). Tighten to your office/VPN + GitHub Actions IP ranges in production."
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "kubernetes_version" {
  type    = string
  default = "1.30"
}

variable "node_instance_types" {
  type    = list(string)
  default = ["t3.medium"]
}
