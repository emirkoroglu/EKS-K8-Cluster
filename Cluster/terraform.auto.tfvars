region          = "us-east-1"
cluster_name    = "devops-cluster"
cluster_version = "1.21"
instance_type   = "m4.large"
asg_max_size    = 55
asg_min_size    = 1 
tags = {
  Name        = "devops-cluster"
  Environment = "Dev"
  Team        = "DevOps"
}
