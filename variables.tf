variable "gcloud_region" { default = "us-west1" }

variable "gcloud_project" { default = "" }

variable "platform_name" { default = "terraform" }

variable "cluster_master_auth_username" {}
variable "cluster_master_auth_password" {}

variable "cluster_node_machine_type" { default = "g1-small" }
variable "cluster_node_initial_count" { default = 2 }
