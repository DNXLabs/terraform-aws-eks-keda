module "eks-keda" {
  source             = "DNXLabs/eks-keda/aws"
  version            = "0.0.3"
  enabled            = true
  helm_chart_version = "2.4.0"
}