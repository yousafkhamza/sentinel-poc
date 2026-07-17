output "rule_ids" {
  value = [
    aws_security_group_rule.allow_gateway_to_backend_app.id,
    aws_security_group_rule.allow_gateway_to_backend_nodeport_range.id,
  ]
}
