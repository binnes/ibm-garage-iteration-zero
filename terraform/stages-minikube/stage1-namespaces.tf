module "dev_tools_namespace" {
  source = "github.com/ibm-garage-cloud/terraform-k8s-namespace.git?ref=v2.6.0"

  cluster_type             = var.cluster_type_code
  cluster_config_file_path = var.config_file_path
  tls_secret_name          = var.tls_secret
  name                     = var.tools_namespace
}

module "dev_sre_namespace" {
  source = "github.com/ibm-garage-cloud/terraform-k8s-namespace.git?ref=v2.6.0"

  cluster_type             = var.cluster_type_code
  cluster_config_file_path = var.config_file_path
  tls_secret_name          = var.tls_secret
  name                     = var.sre_namespace
}
