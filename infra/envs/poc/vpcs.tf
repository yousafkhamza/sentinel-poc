module "vpc_gateway" {
  source = "../../modules/vpc"

  name                 = "gateway"
  cidr_block           = var.gateway_vpc_cidr
  azs                  = var.azs
  public_subnet_cidrs  = ["10.0.0.0/24", "10.0.1.0/24"]
  private_subnet_cidrs = ["10.0.10.0/24", "10.0.11.0/24"]
  single_nat_gateway   = true

  tags = {
    Layer = "gateway"
  }
}

module "vpc_backend" {
  source = "../../modules/vpc"

  name                 = "backend"
  cidr_block           = var.backend_vpc_cidr
  azs                  = var.azs
  public_subnet_cidrs  = ["10.1.0.0/24", "10.1.1.0/24"]
  private_subnet_cidrs = ["10.1.10.0/24", "10.1.11.0/24"]
  single_nat_gateway   = true

  tags = {
    Layer = "backend"
  }
}
