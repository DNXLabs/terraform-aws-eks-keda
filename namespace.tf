resource "kubernetes_namespace" "keda" {
  depends_on = [var.mod_dependency]
  count      = (var.enabled && var.create_namespace && var.namespace != "kube-system") ? 1 : 0

  metadata {
    name = var.namespace
  }

  labels = {
    "app.kubernetes.io/name"    = var.helm_chart_release_name
    "app.kubernetes.io/part-of" = "keda-operator"
    "app.kubernetes.io/version" = var.helm_chart_version
  }
}