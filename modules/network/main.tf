resource "google_compute_network" "network" {
  name    = "${var.platform_name}-net"
}

resource "google_compute_firewall" "http" {
  name    = "${var.platform_name}-firewall-http"
  network = "${google_compute_network.network.name}"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

   source_ranges = ["0.0.0.0/0"]
}


resource "google_compute_subnetwork" "subnet" {
  name          = "${var.platform_name}-${var.gcloud_region}-subnet"
  ip_cidr_range = "${var.network_cidr}"
  network       = "${google_compute_network.network.self_link}"
  region        = "${var.gcloud_region}"
}

resource "google_compute_global_address" "global_address" {
  name = "${var.platform_name}-address"
}