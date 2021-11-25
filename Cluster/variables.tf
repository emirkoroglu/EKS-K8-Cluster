variable "region" {
  type        = string
  description = "Region"
}
variable "cluster_name" {
  type        = string
  description = "Cluster name"
}
variable "cluster_version" {
  default     = "1.21"
  description = "Cluster version"
}
variable "instance_type" {
  description = "instance type"
  type        = string
}
variable "asg_max_size" {
  description = "asg max size"
  type        = string
}
variable "asg_min_size" {
  description = "asg min used"
  type        = string
}
variable "tags" {
  description = "Tag names used"
  type        = map(any)
}
