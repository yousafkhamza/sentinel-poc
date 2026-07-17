module "eks_gateway" {
  source = "../../modules/eks"

  cluster_name                 = "eks-gateway"
  kubernetes_version           = var.kubernetes_version
  cluster_role_arn             = module.iam_eks_gateway.cluster_role_arn
  node_role_arn                = module.iam_eks_gateway.node_role_arn
  private_subnet_ids           = module.vpc_gateway.private_subnet_ids
  endpoint_public_access       = true
  endpoint_public_access_cidrs = var.eks_public_access_cidrs
  instance_types               = var.node_instance_types

  tags = { Layer = "gateway" }
}

module "eks_backend" {
  source = "../../modules/eks"

  cluster_name                 = "eks-backend"
  kubernetes_version           = var.kubernetes_version
  cluster_role_arn             = module.iam_eks_backend.cluster_role_arn
  node_role_arn                = module.iam_eks_backend.node_role_arn
  private_subnet_ids           = module.vpc_backend.private_subnet_ids
  endpoint_public_access       = true
  endpoint_public_access_cidrs = var.eks_public_access_cidrs
  instance_types               = var.node_instance_types

  tags = { Layer = "backend" }
}
