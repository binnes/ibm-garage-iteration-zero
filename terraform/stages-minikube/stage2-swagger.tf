module "dev_tools_swagger" {
  source = "github.com/ibm-garage-cloud/terraform-tools-swaggereditor.git?ref=v1.4.0"

  cluster_ingress_hostname = var.ingress_hostname
  cluster_config_file      = var.config_file_path
  cluster_type             = var.cluster_type_code
  tls_secret_name          = var.tls_secret
  releases_namespace       = module.dev_tools_namespace.name
  image_tag                = "v3.8.0"
  enable_sso               = true
  chart_version            = "1.3.0"
}
