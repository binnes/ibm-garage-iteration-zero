module "dev_software_olm" {
  source = "github.com/ibm-garage-cloud/terraform-k8s-olm.git?ref=v1.2.2"

  cluster_config_file      = var.config_file_path
  cluster_version          = ""
  cluster_type             = var.cluster_type_code
  olm_version              = "v0.17.0"
}
