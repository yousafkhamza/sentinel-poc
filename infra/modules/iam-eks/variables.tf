variable "cluster_name" {
  description = "Cluster short name, e.g. gateway or backend. Used to build eks-<name>-* role names."
  type        = string
}

variable "tags" {
  type    = map(string)
  default = {}
}
