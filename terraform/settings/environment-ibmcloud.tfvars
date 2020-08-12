# The type of cluster that will be created/used (kubernetes, openshift, ocp4, or crc) Use "openshift" for OpenShift 3.11
cluster_type="kubernetes"
# Flag indicating if we are using an existing cluster or creating a new one
cluster_exists="false"

# This flag is used to indicate that the cluster uses VPC infrastructure. The default is "false"
# if this value is not provided. Currently, this flag can only be used for an existing cluster
# (i.e. the script will not provision a new VPC cluster). If the cluster is a VPC cluster and
# this flag is set to "false" then the setup will fail.
vpc_cluster="false"

# The prefix that should be applied to the cluster name and service names (if not provided
# explicitly). If not provided then the resource_group_name will be used as the prefix.
#name_prefix="<name prefix for cluster and services>"

# The cluster name can be provided (particularly if using an existing cluster). The value
# for cluster name used by the scripts will be set in the following order of presidence:
# - "${cluster_name}"
# - "${name_prefix}-cluster"
# - "${resource_group_name}-cluster"
cluster_name="<cluster name>"

# The namespace that will be created and used within the IBM Container Registry to store container
# images. This value is optional and will default to the resource_group_name if not provided.
# Note: Namespaces within the IBM Container Registry are scoped to the region (e.g. us-south) and not
# to the particular account. If a registry namespace is already owned by a different account, the
# terraform process will fail while trying to provision a new namespace. At that point, the
# registry_namespace value should be updated to a unique value.
#registry_namespace="<registry namespace>"

resource_group_name="<resource group>"
region="us-east"

# This flag is used to indicate that a LogDNA instance should be provisioned. The default is "false"
# if this value is not provided.
#provision_logdna="false"
# The name of the LogDNA instance. If you are provisioning LogDNA this value is optional and the
# prefix_name/resource_group_name will be used for the LogDNA instance if not provided. However, if
# you are not provisioning the LogDNA instance and would like to bind the cluster to an existing instance
# then this value is REQUIRED
#logdna_name=""

# This flag is used to indicate that a Sysdig instance should be provisioned. The default is "false"
# if this value is not provided.
#provision_sysdig="false"
# The name of the Sysdig instance. If you are provisioning Sysdig this value is optional and the
# prefix_name/resource_group_name will be used for the Sysdig instance if not provided. However, if
# you are not provisioning the Sysdig instance and would like to bind the cluster to an existing instance
# then this value is REQUIRED
#sysdig_name=""