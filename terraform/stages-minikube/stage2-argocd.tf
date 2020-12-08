module "dev_tools_argocd" {
  source = "git::https://gitea.192.168.64.2.nip.io/cloudNativeToolkit/terraform-tools-argocd.git"

  cluster_config_file = var.config_file_path
  cluster_type        = var.cluster_type_code
  olm_namespace       = module.dev_software_olm.olm_namespace
  operator_namespace  = module.dev_software_olm.target_namespace
  ingress_subdomain   = var.ingress_hostname
  tls_secret          = var.tls_secret
  app_namespace       = module.dev_tools_namespace.name
  name                = "argocd"
}
