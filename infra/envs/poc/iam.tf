module "iam_eks_gateway" {
  source       = "../../modules/iam-eks"
  cluster_name = "gateway"

  providers = {
    aws = aws.untagged
  }
}

module "iam_eks_backend" {
  source       = "../../modules/iam-eks"
  cluster_name = "backend"

  providers = {
    aws = aws.untagged
  }
}
