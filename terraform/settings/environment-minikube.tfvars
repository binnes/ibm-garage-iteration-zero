# The type of cluster that will be created/used (kubernetes, openshift, ocp4, or crc) Use "openshift" for OpenShift 3.11
cluster_type="minikube"
# Flag indicating if we are using an existing cluster or creating a new one
cluster_exists="true"
cluster_provision_cos="false"


resource_group_name="na"
region="na"
vpc_zone_names="na"

config_file_path = "/home/devops/.kube/config"
cluster_type_code = "kubernetes"
tls_secret = "ingress-tls"
