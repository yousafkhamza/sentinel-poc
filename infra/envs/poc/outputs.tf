output "gateway_cluster_name" {
  value = module.eks_gateway.cluster_name
}

output "backend_cluster_name" {
  value = module.eks_backend.cluster_name
}

output "gateway_cluster_endpoint" {
  value = module.eks_gateway.cluster_endpoint
}

output "backend_cluster_endpoint" {
  value = module.eks_backend.cluster_endpoint
}

output "gateway_vpc_id" {
  value = module.vpc_gateway.vpc_id
}

output "backend_vpc_id" {
  value = module.vpc_backend.vpc_id
}

output "peering_connection_id" {
  value = module.peering.peering_connection_id
}
