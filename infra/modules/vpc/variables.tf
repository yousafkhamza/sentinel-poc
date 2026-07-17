variable "name" {
  description = "Logical name for this VPC, e.g. gateway or backend"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "azs" {
  description = "Availability zones to spread subnets across (exactly 2 expected)"
  type        = list(string)
}

variable "public_subnet_cidrs" {
  description = "CIDRs for the public subnets that host NAT Gateway ENIs only. Nothing else is deployed here."
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "CIDRs for the private subnets that host EKS nodes/pods"
  type        = list(string)
}

variable "single_nat_gateway" {
  description = "If true, create one NAT Gateway (cost-optimized, single AZ dependency). If false, one NAT per AZ (HA)."
  type        = bool
  default     = true
}

variable "tags" {
  description = "Common tags applied to all resources"
  type        = map(string)
  default     = {}
}
