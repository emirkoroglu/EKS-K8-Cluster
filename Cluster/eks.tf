module "eks" {
  source          = "terraform-aws-modules/eks/aws"

  cluster_version = var.cluster_version
  cluster_name    = var.cluster_name
  vpc_id          = aws_default_subnet.default_az3.vpc_id
  subnets         = [
    aws_default_subnet.default_az1.id,
    aws_default_subnet.default_az2.id,
    aws_default_subnet.default_az3.id,
  ]
  worker_groups = [
    {
      instance_type = "m4.large"
      asg_max_size  = 5
      asg_min_size = 1
    }
  ]
}