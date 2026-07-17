module "peering" {
  source = "../../modules/peering"

  requester_vpc_id          = module.vpc_gateway.vpc_id
  accepter_vpc_id           = module.vpc_backend.vpc_id
  requester_cidr             = var.gateway_vpc_cidr
  accepter_cidr               = var.backend_vpc_cidr
  requester_route_table_ids  = module.vpc_gateway.private_route_table_ids
  accepter_route_table_ids    = module.vpc_backend.private_route_table_ids

  tags = { Purpose = "gateway-backend-private-link" }
}

module "cross_vpc_sg" {
  source = "../../modules/security-groups"

  backend_vpc_id                  = module.vpc_backend.vpc_id
  backend_node_security_group_id  = module.eks_backend.node_security_group_id
  gateway_vpc_cidr                 = var.gateway_vpc_cidr
  backend_app_port                  = 8080
}
