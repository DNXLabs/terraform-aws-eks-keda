variable "enabled" {
  type    = bool
  default = true
}

variable "helm_chart_name" {
  type        = string
  default     = "kedacore/keda"
  description = "Keda chart name."
}

variable "helm_chart_release_name" {
  type        = string
  default     = "keda"
  description = "keda release name."
}

variable "helm_chart_repo" {
  type        = string
  default     = "https://kedacore.github.io/charts"
  description = "keda repository name."
}

variable "helm_chart_version" {
  type        = string
  default     = "2.2.1"
  description = "keda chart version."
}

variable "create_namespace" {
  type        = bool
  default     = true
  description = "Whether to create k8s namespace with name defined by `namespace`."
}

variable "namespace" {
  type        = string
  default     = "keda"
  description = "Kubernetes namespace to deploy EKS Spot termination handler Helm chart."
}

variable "mod_dependency" {
  default     = null
  description = "Dependence variable binds all AWS resources allocated by this module, dependent modules reference this variable."
}

variable "settings" {
  default     = {}
  description = "Additional settings which will be passed to the Helm chart values, see https://keda.sh/docs/2.0/deploy/#helm."
}
