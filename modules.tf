data "google_project_services" "project" {
  project = "leafy-guide-237712"
}

module "network" {
  source = "./modules/network"

  gcloud_region = "${var.gcloud_region}"

  platform_name = "${var.platform_name}"
}

module "cluster" {
  source = "./modules/cluster"


  gcloud_zone = "${data.google_compute_zones.zones.names[0]}"

  platform_name = "${var.platform_name}"

  network_name = "${module.network.network_name}"
  subnetwork_name = "${module.network.subnetwork_name}"

  cluster_node_machine_type = "${var.cluster_node_machine_type}"
  cluster_node_initial_count = "${var.cluster_node_initial_count}"

  cluster_master_auth_username = "${var.cluster_master_auth_username}"
  cluster_master_auth_password = "${var.cluster_master_auth_password}"
}
