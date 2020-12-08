# Resource Group Variables
variable "resource_group_name" {
  type        = string
  description = "Existing resource group where the IKS cluster will be provisioned."
  default     = ""
}

variable "ibmcloud_api_key" {
  type        = string
  description = "The api key for IBM Cloud access"
}

# Cluster Variables
variable "private_vlan_id" {
  type        = string
  description = "Existing private VLAN id for cluster creation."
  default     = ""
}

variable "public_vlan_id" {
  type        = string
  description = "Existing public VLAN number for cluster creation."
  default     = ""
}

variable "vlan_datacenter" {
  type        = string
  description = "Datacenter for VLANs defined in private_vlan_number and public_vlan_number."
  default     = ""
}

variable "region" {
  type        = string
  description = "Region for VLANs defined in private_vlan_number and public_vlan_number."
  default     = ""
}

variable "vlan_region" {
  type        = string
  description = "(Deprecated) Region for VLANs defined in private_vlan_number and public_vlan_number."
  default     = ""
}

# Cluster Variables
variable "flavor" {
  type        = string
  description = "The machine type for the cluster worker nodes (b3c.4x16 is minimum for OpenShift)"
  default     = "mx2.4x32"
}

# Cluster Variables_num
variable "cluster_worker_count" {
  description = "The number of worker nodes for the cluster"
  default     = 3
}

# Cluster Variables
variable "cluster_hardware" {
  type        = string
  description = "The type of hardware for the cluster"
  default     = "shared"
}

variable "cluster_name" {
  type        = string
  description = "The name of the cluster"
  default     = ""
}

variable "cluster_type" {
  type        = string
  description = "The type of cluster that should be created (openshift or kubernetes)"
}

variable "cluster_exists" {
  type        = string
  description = "Flag indicating if the cluster already exists (true or false)"
  default     = "false"
}

variable "name_prefix" {
  type        = string
  description = "Prefix name that should be used for the cluster and services. If not provided then resource_group_name will be used"
  default     = ""
}

variable "TF_VERSION" {
  type = string
  description = "The version of terraform that should be used"
  default = "0.12"
}

variable "vpc_cluster" {
  type        = string
  description = "Flag indicating if the cluster is vpc"
  default     = "false"
}

variable "vpc_zone_names" {
  type        = string
  description = "Comma-separated list of vpc zone names"
  default     = ""
}

variable "cluster_provision_cos" {
  type = string
  description = "Flag indicating that cos instance should be provisioned by cluster-platform module"
  default = "true"
}

variable "cos_name" {
  type        = string
  description = "The name of the existing cos instance"
  default     = ""
}

variable "tools_namespace" {
  type        = string
  description = "Namespace for tools"
  default     = "tools"
}

variable "sre_namespace" {
  type        = string
  description = "Namespace for SRE tools"
  default     = "ibm-observe"
}

variable "login_user" {
  type        = string
  description = "The username to log in to openshift"
  default     = ""
}

variable "login_password" {
  type        = string
  description = "The password to log in to openshift"
  default     = ""
}

variable "login_token" {
  type        = string
  description = "The token used to log in to openshift"
  default     = ""
}

variable "server_url" {
  type        = string
  description = "The url to the server"
}

variable "registry_type" {
  type        = string
  description = "The type of image registry (icr, ocp, other, none)"
  default     = "ocp"
}

variable "registry_host" {
  type        = string
  description = "The host that should be used for the image registry"
  default     = ""
}

variable "registry_namespace" {
  type        = string
  description = "The namespace that should be used for the image registry"
  default     = ""
}

variable "registry_user" {
  type        = string
  description = "The username for accessing the image registry"
  default     = ""
}

variable "registry_password" {
  type        = string
  description = "The password for accessing the image registry"
  default     = ""
}

variable "registry_url" {
  type        = string
  description = "The browser url to view the images in the registry"
  default     = ""
}

variable "source_control_type" {
  type        = string
  description = "The type of source control system (github, gitlab, or none)"
  default     = "github"
}

variable "source_control_url" {
  type        = string
  description = "The url to the source control system"
  default     = "https://gitea.192.168.64.2.nip.io"
}

variable "config_file_path" {
  type        = string
  description = "(Deprecated) Path to the config file for the cluster."
  default     = "/home/devops/.kube/config"
}

variable "cluster_type_code" {
  type        = string
  description = "openshift or kubernetes"
  default     = "kubernetes"
}

  variable "ingress_hostname" {
  type        = string
  description = ""
  default     = "192.168.64.2.nip.io"
}

  variable "tls_secret" {
  type        = string
  description = ""
  default     = "ingress-tls"
}
