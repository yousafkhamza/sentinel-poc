resource "aws_security_group_rule" "allow_gateway_to_backend_app" {
  type              = "ingress"
  from_port         = var.backend_app_port
  to_port           = var.backend_app_port
  protocol          = "tcp"
  cidr_blocks       = [var.gateway_vpc_cidr]
  security_group_id = var.backend_node_security_group_id
  description       = "Allow gateway VPC to reach backend app port"
}

resource "aws_security_group_rule" "allow_gateway_to_backend_nodeport_range" {
  type              = "ingress"
  from_port         = 30000
  to_port           = 32767
  protocol          = "tcp"
  cidr_blocks       = [var.gateway_vpc_cidr]
  security_group_id = var.backend_node_security_group_id
  description       = "Allow gateway VPC to reach backend NodePort range (Service type LoadBalancer target)"
}
