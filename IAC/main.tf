provider "aws" {
  region = "us-west-2"
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  name   = "webapp-vpc"
  cidr   = "10.0.0.0/16"
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "webapp-cluster"
  cluster_version = "1.26"
  subnets         = module.vpc.public_subnets
  vpc_id          = module.vpc.vpc_id
}

output "kubeconfig" {
  value = module.eks.kubeconfig_filename
}
