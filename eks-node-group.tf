resource "aws_eks_node_group" "main" {
  cluster_name = aws_eks_cluster.main.name
  node_group_name = "${var.project_name}-nodes"

  node_role_arn = aws_iam_role.eks_node.arn

  subnet_ids = [
    aws_subnet.public_1.id,
    aws_subnet.public_2.id
  ]

  instance_types = ["t3.medium"]

  capacity_type = "ON_DEMAND"

  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 1
  }

  depends_on = [
    aws_iam_role_policy_attachment.eks_worker_node_policy,
    aws_iam_role_policy_attachment.eks_cni_policy,
    aws_iam_role_policy_attachment.eks_ecr_policy
  ]

  tags = {
    Name        = "${var.project_name}-eks-node"
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}
