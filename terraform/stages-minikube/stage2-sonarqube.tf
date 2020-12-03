module "dev_tools_sonarqube" {
  source = "github.com/ibm-garage-cloud/terraform-tools-sonarqube.git?ref=v1.9.1"

  cluster_type             = var.cluster_type_code
  cluster_config_file      = var.config_file_path
  cluster_ingress_hostname = var.ingress_hostname
  tls_secret_name          = var.tls_secret
  releases_namespace       = module.dev_tools_namespace.name
  service_account_name     = "sonarqube"
  postgresql               = {
    external      = false
    username      = ""
    password      = ""
    hostname      = ""
    port          = ""
    database_name = ""
  }
}
