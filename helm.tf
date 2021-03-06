resource "helm_release" "keda" {
  depends_on = [var.mod_dependency, kubernetes_namespace.keda]
  count      = var.enabled ? 1 : 0
  name       = var.helm_chart_name
  chart      = var.helm_chart_release_name
  repository = var.helm_chart_repo
  version    = var.helm_chart_version
  namespace  = var.namespace

  values = [
    yamlencode(var.settings)
  ]
}