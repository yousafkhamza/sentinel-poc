aws_region = "us-east-2"
azs        = ["us-east-2a", "us-east-2b"]

gateway_vpc_cidr = "10.0.0.0/16"
backend_vpc_cidr = "10.1.0.0/16"

# Tighten this to GitHub Actions runner IP ranges + your own IP for real use.
eks_public_access_cidrs = ["0.0.0.0/0"]

kubernetes_version   = "1.35"
node_instance_types  = ["t3.medium"]
