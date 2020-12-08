module "dev_tools_dashboard" {
  source = "git::https://gitea.192.168.64.2.nip.io/cloudNativeToolkit/terraform-tools-dashboard.git"

  cluster_ingress_hostname = var.ingress_hostname
  cluster_config_file      = var.config_file_path
  cluster_type             = var.cluster_type_code
  tls_secret_name          = var.tls_secret
  releases_namespace       = module.dev_tools_namespace.name
}
