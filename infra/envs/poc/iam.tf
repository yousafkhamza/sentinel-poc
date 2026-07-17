module "iam_eks_gateway" {
  source       = "../../modules/iam-eks"
  cluster_name = "gateway"
  tags         = { Layer = "gateway" }
}

module "iam_eks_backend" {
  source       = "../../modules/iam-eks"
  cluster_name = "backend"
  tags         = { Layer = "backend" }
}
