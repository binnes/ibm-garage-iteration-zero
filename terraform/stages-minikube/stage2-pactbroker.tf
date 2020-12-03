module "dev_tools_pactbroker_release" {
  source = "github.com/ibm-garage-cloud/terraform-tools-pactbroker.git?ref=v1.4.0"

  cluster_ingress_hostname           = var.ingress_hostname
  cluster_config_file                = var.config_file_path
  cluster_type                       = var.cluster_type_code
  tls_secret_name                    = var.tls_secret
  releases_namespace                 = module.dev_tools_namespace.name
}
