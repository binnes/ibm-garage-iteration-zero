module "dev_tools_tekton_release" {
  source = "github.com/ibm-garage-cloud/terraform-tools-tekton.git?ref=v2.0.1"

  cluster_type             = var.cluster_type_code
  cluster_config_file_path = var.config_file_path
  cluster_ingress_hostname = var.ingress_hostname
  tools_namespace          = module.dev_tools_namespace.name
}

module "dev_tools_tekton_resources" {
  source = "github.com/ibm-garage-cloud/terraform-tools-tekton-resources.git?ref=v2.1.9"

  cluster_type             = var.cluster_type_code
  cluster_config_file_path = var.config_file_path
  resource_namespace       = module.dev_tools_namespace.name
  git_url                  = "https://api.github.com/repos/ibm/ibm-garage-tekton-tasks"
}
