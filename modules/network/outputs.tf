output "network_name" {
  value = "${google_compute_network.network.name}"
}

output "subnetwork_name" {
  value = "${google_compute_subnetwork.subnet.name}"
}

output "public_ip_address" {
  value = "${google_compute_global_address.global_address.address}"
}