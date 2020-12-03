module "dev_tools_artifactory" {
  source = "github.com/ibm-garage-cloud/terraform-tools-artifactory.git?ref=v1.9.2"

  cluster_type             = var.cluster_type_code
  cluster_ingress_hostname = var.ingress_hostname
  cluster_config_file      = var.config_file_path
  tls_secret_name          = var.tls_secret
  releases_namespace       = module.dev_tools_namespace.name
  service_account          = "artifactory-artifactory"
}
